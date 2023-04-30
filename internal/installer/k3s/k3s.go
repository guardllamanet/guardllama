package k3s

import (
	"context"
	"errors"
	"fmt"
	"io"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	v1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
)

const (
	getK3sURL           = "https://get.k3s.io"
	k3sKubeConfigPath   = "/etc/rancher/k3s/k3s.yaml"
	uninstallScriptPath = "/usr/local/bin/k3s-uninstall.sh"
)

func NewWithOpts(opts ...K3sOption) *K3s {
	k := &K3s{}

	for _, opt := range opts {
		opt.apply(k)
	}

	return k
}

type K3s struct {
	kubeConfig   string
	k3sVersion   string
	vpnPortRange *v1.ServerConfig_Cluster_VpnPortRange
	logger       *log.Logger
}

type K3sOption interface {
	apply(k *K3s)
}

func WithKubeConfig(kc string) K3sOption {
	return withOption(func(k *K3s) {
		k.kubeConfig = kc
	})
}

func WithVPNPortRange(portRange *v1.ServerConfig_Cluster_VpnPortRange) K3sOption {
	return withOption(func(k *K3s) {
		k.vpnPortRange = portRange
	})
}

func WithLogger(logger *log.Logger) K3sOption {
	return withOption(func(k *K3s) {
		k.logger = logger
	})
}

func WithK3sVersion(ver string) K3sOption {
	return withOption(func(k *K3s) {
		k.k3sVersion = ver
	})
}

type withOption func(k *K3s)

func (o withOption) apply(k *K3s) {
	o(k)
}

func (k *K3s) Ensure(ctx context.Context) error {
	k.logger.Info("Installing k3s", "kubeconfig", k.kubeConfig, "version", k.k3sVersion)

	resp, err := http.Get(getK3sURL)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	f, err := os.CreateTemp("", "k3s")
	if err != nil {
		return err
	}
	defer os.Remove(f.Name())

	_, err = io.Copy(f, resp.Body)
	if err != nil {
		return err
	}

	fromPort, toPort := util.VPNPortRange(k.vpnPortRange)
	cmd := exec.CommandContext(
		ctx,
		"/bin/sh",
		f.Name(),
		"-s",
		"-",
		"--write-kubeconfig-mode",
		"644",
		"--disable",
		"metrics-server",
		"--kube-apiserver-arg",
		fmt.Sprintf("service-node-port-range=%d-%d", fromPort, toPort),
	)

	cmd.Env = os.Environ()
	if k.k3sVersion != "" {
		cmd.Env = append(cmd.Env, fmt.Sprintf("INSTALL_K3S_VERSION=%s", k.k3sVersion))
	}

	w := k.logger.Writer()
	defer w.Close()

	cmd.Stdout = w
	cmd.Stderr = w

	if err := cmd.Run(); err != nil {
		return err
	}

	if kc := k.kubeConfig; kc != "" {
		if err := os.MkdirAll(filepath.Dir(kc), 0711); err != nil {
			return err
		}

		b, err := os.ReadFile(k3sKubeConfigPath)
		if err != nil {
			return err
		}

		if err := os.WriteFile(kc, b, 0600); err != nil {
			return err
		}
	}

	return nil
}

func (k *K3s) Destroy(ctx context.Context) error {
	k.logger.Info("Uninstalling k3s")

	if _, err := os.Stat(uninstallScriptPath); errors.Is(err, os.ErrNotExist) {
		return fmt.Errorf("k3s uninstall script does not exist")
	}

	w := k.logger.Writer()
	defer w.Close()

	cmd := exec.CommandContext(
		ctx,
		"/bin/sh",
		uninstallScriptPath,
	)
	cmd.Stdout = w
	cmd.Stderr = w

	if err := cmd.Run(); err != nil {
		return err
	}

	if kc := k.kubeConfig; kc != "" {
		if err := os.Remove(kc); err != nil {
			return err
		}
	}

	return nil
}
