package k3d

import (
	"context"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	v1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	k3dutil "github.com/k3d-io/k3d/v5/cmd/util"
	"github.com/k3d-io/k3d/v5/pkg/client"
	"github.com/k3d-io/k3d/v5/pkg/config"
	ctypes "github.com/k3d-io/k3d/v5/pkg/config/types"
	"github.com/k3d-io/k3d/v5/pkg/config/v1alpha4"
	"github.com/k3d-io/k3d/v5/pkg/runtimes"
	"github.com/k3d-io/k3d/v5/pkg/types"
	"github.com/k3d-io/k3d/v5/version"
	"golang.org/x/exp/slog"
)

func NewWithOpts(opts ...K3dOption) *K3d {
	k := &K3d{}

	for _, opt := range opts {
		opt.apply(k)
	}

	return k
}

type K3d struct {
	name         string
	host         string
	kubeConfig   string
	k3sVersion   string
	vpnPortRange *v1.ServerConfig_Cluster_VpnPortRange
	logger       *log.Logger
}

type K3dOption interface {
	apply(k *K3d)
}

func WithName(name string) K3dOption {
	return withOption(func(k *K3d) {
		k.name = name
	})
}

func WithHost(host string) K3dOption {
	return withOption(func(k *K3d) {
		k.host = host
	})
}

func WithVPNPortRange(portRange *v1.ServerConfig_Cluster_VpnPortRange) K3dOption {
	return withOption(func(k *K3d) {
		k.vpnPortRange = portRange
	})
}

func WithK3sVersion(ver string) K3dOption {
	return withOption(func(k *K3d) {
		k.k3sVersion = ver
	})
}

func WithKubeConfig(kc string) K3dOption {
	return withOption(func(k *K3d) {
		k.kubeConfig = kc
	})
}

func WithLogger(logger *log.Logger) K3dOption {
	return withOption(func(k *K3d) {
		k.logger = logger
	})
}

type withOption func(k *K3d)

func (o withOption) apply(k *K3d) {
	o(k)
}

func (k *K3d) Ensure(ctx context.Context) error {
	var (
		logger     = k.logger.With("name", k.name, "kubeconfig", k.kubeConfig, "version", k.k3sVersion)
		k3sVersion = k.k3sVersion
		err        error
	)

	if k3sVersion == "" {
		k3sVersion, err = version.GetK3sVersion("stable")
		if err != nil {
			return err
		}
	}

	freePort, err := k3dutil.GetFreePort()
	if err != nil {
		return err
	}

	registries := v1alpha4.SimpleConfigRegistries{
		Create: &v1alpha4.SimpleConfigRegistryCreateConfig{
			Name:     registryName(k.name),
			Host:     k.host,
			HostPort: "5111",
		},
	}

	pnf := []v1alpha4.PortWithNodeFilters{
		{
			Port:        fmt.Sprintf("%s:38080:80/tcp", k.host),
			NodeFilters: []string{"loadbalancer"},
		},
		{
			Port:        fmt.Sprintf("%s:38443:443", k.host),
			NodeFilters: []string{"loadbalancer"},
		},
	}
	extraArgs := []v1alpha4.K3sArgWithNodeFilters{
		{
			Arg:         "--disable=metrics-server",
			NodeFilters: []string{"servers:*"},
		},
	}

	if pr := k.vpnPortRange; pr != nil {
		pnf = append(pnf, v1alpha4.PortWithNodeFilters{
			Port:        fmt.Sprintf("%s:%d-%d:%d-%d/%s", k.host, pr.FromPort, pr.ToPort, pr.FromPort, pr.ToPort, pr.Protocol),
			NodeFilters: []string{"server:0:direct"},
		})

		fromPort, toPort := util.VPNPortRange(k.vpnPortRange)
		extraArgs = append(extraArgs, v1alpha4.K3sArgWithNodeFilters{
			Arg:         fmt.Sprintf("--kube-apiserver-arg=service-node-port-range=%d-%d", fromPort, toPort),
			NodeFilters: []string{"all"},
		})
	}

	simpleConfig := &v1alpha4.SimpleConfig{
		ObjectMeta: ctypes.ObjectMeta{
			Name: k.name,
		},
		Servers: 1,
		// Docker image tag uses - instead of +, e.g. v1.23.7-k3s1 instead of v1.23.7+k3s1
		Image: fmt.Sprintf("%s:%s", types.DefaultK3sImageRepo, strings.ReplaceAll(k3sVersion, "+", "-")),
		ExposeAPI: v1alpha4.SimpleExposureOpts{
			HostIP:   "127.0.0.1",
			HostPort: fmt.Sprintf("%d", freePort), // TODO: this can overlap with exposed ports below
		},
		Ports:      pnf,
		Registries: registries,
		Options: v1alpha4.SimpleConfigOptions{
			K3sOptions: v1alpha4.SimpleConfigOptionsK3s{
				ExtraArgs: extraArgs,
			},
			K3dOptions: v1alpha4.SimpleConfigOptionsK3d{
				Wait:       true,
				Timeout:    0,
				NoRollback: true,
			},
			KubeconfigOptions: v1alpha4.SimpleConfigOptionsKubeconfig{
				UpdateDefaultKubeconfig: false,
				SwitchCurrentContext:    false,
			},
		},
	}

	clusterConfig, err := config.TransformSimpleToClusterConfig(ctx, runtimes.SelectedRuntime, *simpleConfig)
	if err != nil {
		return err
	}
	clusterConfig.ClusterCreateOpts.WaitForServer = true

	clusterConfig, err = config.ProcessClusterConfig(*clusterConfig)
	if err != nil {
		return err
	}

	if err = config.ValidateClusterConfig(ctx, runtimes.SelectedRuntime, *clusterConfig); err != nil {
		return err
	}

	if cluster, err := client.ClusterGet(ctx, runtimes.SelectedRuntime, &clusterConfig.Cluster); err == nil {
		logger.Info("Cluster already launched, skipping")
		return updateKubeConfig(ctx, cluster, k.kubeConfig, logger)
	}

	logger.Info("Launching cluster")
	if err = client.ClusterRun(ctx, runtimes.SelectedRuntime, clusterConfig); err != nil {
		return err
	}

	return updateKubeConfig(ctx, &clusterConfig.Cluster, k.kubeConfig, logger)
}

func (k *K3d) Destroy(ctx context.Context) error {
	k.logger.Info("Landing cluster", "name", k.name, "kubeconfig", k.kubeConfig)

	cluster := &types.Cluster{Name: k.name}
	if err := client.ClusterDelete(
		ctx,
		runtimes.SelectedRuntime,
		cluster,
		types.ClusterDeleteOpts{
			SkipRegistryCheck: false,
		},
	); err != nil {
		if !errors.Is(err, client.ClusterGetNoNodesFoundError) {
			return err
		}
	}

	d, err := client.KubeconfigGetDefaultPath()
	if err != nil {
		return err
	}

	if k.kubeConfig == d {
		return client.KubeconfigRemoveClusterFromDefaultConfig(ctx, cluster)
	}

	return os.RemoveAll(k.kubeConfig)
}

func updateKubeConfig(ctx context.Context, cluster *types.Cluster, kubeconfig string, logger *slog.Logger) error {
	var opts *client.WriteKubeConfigOptions
	if _, err := os.Stat(kubeconfig); errors.Is(err, os.ErrNotExist) {
		if err := os.MkdirAll(filepath.Dir(kubeconfig), 0750); err != nil {
			return err
		}

		opts = &client.WriteKubeConfigOptions{
			UpdateExisting:       false,
			OverwriteExisting:    true,
			UpdateCurrentContext: true,
		}
	} else {
		opts = &client.WriteKubeConfigOptions{
			UpdateExisting:       true,
			OverwriteExisting:    false,
			UpdateCurrentContext: true,
		}
	}

	logger.Info("Writing kubeconfig", "path", kubeconfig)
	if _, err := client.KubeconfigGetWrite(
		ctx,
		runtimes.SelectedRuntime,
		cluster,
		kubeconfig,
		opts,
	); err != nil {
		return err
	}

	return nil
}

func registryName(name string) string {
	return fmt.Sprintf("%s-%s.localhost", types.DefaultObjectNamePrefix, name)
}
