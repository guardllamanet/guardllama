package installer

import (
	"context"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"strings"

	"github.com/guardllamanet/guardllama/charts"
	"github.com/guardllamanet/guardllama/internal/build"
	"github.com/guardllamanet/guardllama/internal/controller"
	"github.com/guardllamanet/guardllama/internal/installer/helm"
	"github.com/guardllamanet/guardllama/internal/installer/k3d"
	"github.com/guardllamanet/guardllama/internal/installer/k3s"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
)

const (
	annotationBuildVersion = controller.SystemLabelPrefix + "/build-version"
	annotationBuildDate    = controller.SystemLabelPrefix + "/build-date"
)

func Install(ctx context.Context, cfg *apiv1.ServerConfig) error {
	if err := InstallCluster(ctx, cfg); err != nil {
		return err
	}

	return InstallCharts(ctx, cfg)
}

func InstallCluster(ctx context.Context, cfg *apiv1.ServerConfig) error {
	var (
		logger = log.FromContext(ctx)
		err    error
	)

	cfg, err = fillDefaultServerConfig(cfg)
	if err != nil {
		return err
	}
	if err := cfg.ValidateAll(); err != nil {
		return err
	}

	if k3dCluster := cfg.Cluster.GetK3D(); k3dCluster != nil {
		k := k3d.NewWithOpts(
			k3d.WithName(k3dCluster.Name),
			k3d.WithHost(cfg.Cluster.Host),
			k3d.WithVPNPortRange(cfg.Cluster.VpnPortRange),
			k3d.WithKubeConfig(cfg.Cluster.KubeConfig),
			k3d.WithK3sVersion(build.K3sVersion),
			k3d.WithLogger(logger),
		)

		return k.Ensure(ctx)
	}

	k := k3s.NewWithOpts(
		k3s.WithKubeConfig(cfg.Cluster.KubeConfig),
		k3s.WithK3sVersion(build.K3sVersion),
		k3s.WithLogger(logger),
	)

	return k.Ensure(ctx)
}

func InstallCharts(ctx context.Context, cfg *apiv1.ServerConfig) error {
	var (
		logger = log.FromContext(ctx)
		err    error
	)

	cfg, err = loadServerConfig(ctx, cfg)
	if err != nil {
		return err
	}
	defer func() {
		if err := saveServerConfig(ctx, cfg); err != nil {
			logger.Error("error saving config", err)
		}
	}()
	if err := cfg.ValidateAll(); err != nil {
		return err
	}

	chartsDir, err := os.MkdirTemp("", "guardllama-charts")
	if err != nil {
		return fmt.Errorf("cannot mkdir: %w", err)
	}
	defer os.RemoveAll(chartsDir)

	if err := charts.CopyCharts(chartsDir); err != nil {
		return fmt.Errorf("cannot copy charts: %w", err)
	}

	var (
		url           string
		host          = cfg.Cluster.Host
		acme          bool
		redirectHttps bool
	)

	if cfg.Cluster.GetK3D() == nil {
		// for k3s, set to machine ip if host is empty
		if host == "" {
			host = util.MachineIP()
		}
		url = fmt.Sprintf("https://%s", host)
		redirectHttps = true
	} else {
		if host == "" {
			host = "127.0.0.1"
			url = "https://127.0.0.1:38443"
		} else {
			url = fmt.Sprintf("https://%s", host)
		}
		// disable redirect https for local dev
		redirectHttps = false
	}

	// turn on acme if provided host is not an ip
	if net.ParseIP(host) == nil {
		acme = true
	}

	var (
		controllerImageRepo, controllerImageTag = parseImage(cfg.Manager.Image)
	)

	guardllamaChart := helm.Chart{
		Namespace: "guardllama",
		Name:      "guardllama",
		LocalPath: filepath.Join(chartsDir, "guardllama"),
		Version:   "0.1.0",
		Values: map[string]any{
			"image": map[string]any{
				"repository": controllerImageRepo,
				"tag":        controllerImageTag,
				"pullPolicy": "Always",
			},
			"tunnelImage": map[string]any{
				"image":      cfg.Wg.Image,
				"pullPolicy": "Always",
			},
			"ingress": map[string]any{
				"enabled":       true,
				"className":     "traefik",
				"hosts":         []string{host},
				"redirectHttps": redirectHttps,
				"acme":          acme,
			},
			"podAnnotations": map[string]string{
				annotationBuildVersion: build.Version,
				annotationBuildDate:    build.Date,
			},
			"jwt": map[string]any{
				"signKey":   cfg.Credentials.Jwt.SignKey,
				"verifyKey": cfg.Credentials.Jwt.VerifyKey,
			},
		},
	}

	guardllamaImage := guardllamaChart.Values["image"].(map[string]any)
	guardllamaImage["pullPolicy"] = apiv1.ServerConfig_Image_ImagePullPolicy_name[int32(cfg.Manager.ImagePullPolicy)]
	if ips := cfg.Manager.ImagePullSecret; ips != nil {
		guardllamaImage["imagePullSecret"] = map[string]any{
			"server":   ips.Server,
			"username": ips.Username,
			"password": ips.Password,
		}
	}

	wgImage := guardllamaChart.Values["tunnelImage"].(map[string]any)
	wgImage["pullPolicy"] = apiv1.ServerConfig_Image_ImagePullPolicy_name[int32(cfg.Wg.ImagePullPolicy)]
	if ips := cfg.Wg.ImagePullSecret; ips != nil {
		wgImage["imagePullSecret"] = map[string]any{
			"server":   ips.Server,
			"username": ips.Username,
			"password": ips.Password,
		}
	}

	cc := commonCharts(chartsDir)
	groups := []helm.ChartGroup{
		{
			Charts: cc,
		},
		{
			Charts: []helm.Chart{
				guardllamaChart,
			},
		},
	}

	h := helm.NewWithOpts(
		helm.WithKubeConfig(cfg.Cluster.KubeConfig),
		helm.WithLogger(logger),
		helm.WithDebug(cfg.Debug),
	)

	if err := h.EnsureGroups(groups); err != nil {
		return err
	}

	fmt.Printf("\nTo get started, go to %s on your browser and log in with token %q.\n", url, cfg.Credentials.Api.Token)

	return nil
}

func parseImage(image string) (imageRepo string, imageTag string) {
	split := strings.SplitN(image, ":", 2)

	imageRepo = split[0]
	if len(split) < 2 {
		if ver := build.Version; ver == "" {
			imageTag = "latest"
		} else {
			if !strings.HasPrefix(ver, "v") {
				ver = fmt.Sprintf("v%s", ver)
			}
			imageTag = ver
		}
	} else {
		imageTag = split[1]
	}

	return imageRepo, imageTag
}

func commonCharts(chartsDir string) []helm.Chart {
	return []helm.Chart{
		{
			Namespace: "cert-manager",
			Name:      "cert-manager",
			RepoURL:   "https://charts.jetstack.io",
			Version:   "1.11.0",
			Values: map[string]any{
				"installCRDs": true,
				"global": map[string]any{
					"leaderElection": map[string]any{
						"namespace": "cert-manager",
					},
				},
			},
		},
		{
			Namespace: "unbound",
			Name:      "unbound",
			LocalPath: filepath.Join(chartsDir, "unbound"),
			Version:   "0.1.0",
			Values: map[string]any{
				"image": map[string]any{
					// Using a fork due to https://github.com/MatthewVance/unbound-docker/issues/58
					"repository": "ghcr.io/owenthereal/unbound-docker",
					"pullPolicy": "Always",
					"tag":        "1.17.0",
				},
			},
		},
	}
}
