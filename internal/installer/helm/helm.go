package helm

import (
	"context"
	"fmt"
	"time"

	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	"golang.org/x/sync/errgroup"
	"helm.sh/helm/v3/pkg/action"
	"helm.sh/helm/v3/pkg/chart/loader"
	"helm.sh/helm/v3/pkg/cli"
	"helm.sh/helm/v3/pkg/release"
	"helm.sh/helm/v3/pkg/storage/driver"
)

var (
	defaultTimeout = 3 * time.Minute
)

func NewWithOpts(opts ...HelmOption) *Helm {
	h := &Helm{
		timeout: defaultTimeout,
	}
	for _, opt := range opts {
		opt.apply(h)
	}

	return h
}

type HelmOption interface {
	apply(h *Helm)
}

func WithLogger(logger *log.Logger) HelmOption {
	return withOption(func(h *Helm) {
		h.logger = logger
	})
}

func WithKubeConfig(kc string) HelmOption {
	return withOption(func(h *Helm) {
		h.kubeconfig = kc
	})
}

func WithTimeout(t time.Duration) HelmOption {
	return withOption(func(h *Helm) {
		h.timeout = t
	})
}

func WithDebug(d bool) HelmOption {
	return withOption(func(h *Helm) {
		h.debug = d
	})
}

type withOption func(h *Helm)

func (o withOption) apply(h *Helm) {
	o(h)
}

type Helm struct {
	kubeconfig string
	timeout    time.Duration
	debug      bool
	logger     *log.Logger
}

func (h *Helm) EnsureGroups(groups []ChartGroup) error {
	for _, group := range groups {
		g, _ := errgroup.WithContext(context.Background())
		for _, chart := range group.Charts {
			chart := chart
			g.Go(func() error {
				return h.Ensure([]Chart{chart})
			})
		}
		if err := g.Wait(); err != nil {
			return err
		}
	}

	return nil
}

func (h *Helm) Ensure(charts []Chart) error {
	for _, c := range charts {
		h.logger.Info("Installing component", "name", c.Name)
		if _, err := h.installOrUpgrade(c); err != nil {
			return err
		}
	}

	return nil
}

func (h *Helm) installOrUpgrade(c Chart) (*release.Release, error) {
	var (
		chartName   = c.Name
		releaseName = c.Name
		values      = c.Values
		ns          = c.Namespace
	)

	var createNS bool
	if ns == "" {
		ns = "default"
		createNS = false
	} else {
		createNS = true
	}

	cfg, err := h.config(ns)
	if err != nil {
		return nil, err
	}

	settings := cli.New()
	settings.Debug = h.debug

	cpo := action.ChartPathOptions{
		RepoURL: c.RepoURL,
		Version: c.Version,
	}
	if c.LocalPath != "" {
		chartName = c.LocalPath
	}
	path, err := cpo.LocateChart(chartName, settings)
	if err != nil {
		return nil, fmt.Errorf("error locating chart %s: %w", chartName, err)
	}

	chart, err := loader.Load(path)
	if err != nil {
		return nil, fmt.Errorf("error loading chart %s: %w", chartName, err)

	}

	histClient := action.NewHistory(cfg)
	histClient.Max = 1
	if _, err := histClient.Run(releaseName); err == driver.ErrReleaseNotFound {
		client := action.NewInstall(cfg)
		client.Atomic = true
		client.ChartPathOptions = cpo
		client.Wait = true
		client.WaitForJobs = true
		client.Timeout = h.timeout
		client.ReleaseName = releaseName
		client.Namespace = ns
		if createNS {
			client.CreateNamespace = true
		}

		rel, err := client.Run(chart, values)
		if err != nil {
			return nil, fmt.Errorf("error installing chart: %w", err)
		}

		return rel, nil
	} else if err != nil {
		return nil, fmt.Errorf("error fetching chart history: %s", err)
	}

	client := action.NewUpgrade(cfg)
	client.Atomic = true
	client.CleanupOnFail = true
	client.ChartPathOptions = cpo
	client.Namespace = ns
	client.Wait = true
	client.WaitForJobs = true
	client.Timeout = h.timeout

	rel, err := client.Run(releaseName, chart, values)
	if err != nil {
		return nil, fmt.Errorf("error upgrading chart: %w", err)
	}

	return rel, nil
}

func (h *Helm) config(ns string) (*action.Configuration, error) {
	cc := util.NewK8sClientConfig(h.kubeconfig, ns)
	kc := &KubeConfig{ClientConfig: cc}
	cfg := new(action.Configuration)
	if err := cfg.Init(kc, ns, "secret", h.debugLogger); err != nil {
		return nil, fmt.Errorf("error initing helm: %w", err)
	}

	return cfg, nil
}

func (h *Helm) debugLogger(format string, a ...interface{}) {
	h.logger.Debug(fmt.Sprintf(format, a...))
}
