package controller

import (
	"context"
	"fmt"

	"github.com/go-logr/logr"
	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	utilruntime "k8s.io/apimachinery/pkg/util/runtime"
	clientgoscheme "k8s.io/client-go/kubernetes/scheme"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/healthz"
	"sigs.k8s.io/controller-runtime/pkg/manager"
)

const (
	SystemLabelPrefix = "guardllama.net"
)

type Config struct {
	TunnelImage           string `mapstructure:"tunnel-image"`
	TunnelImagePullPolicy string `mapstructure:"tunnel-image-pull-policy"`
	TunnelImagePullSecret string `mapstructure:"tunnel-image-pull-secret"`
	ProbeAddr             string `mapstructure:"probe-addr"`
	MetricsAddr           string `mapstructure:"metrics-addr"`

	Logger logr.Logger
}

func (c Config) Validate() error {
	if c.TunnelImage == "" {
		return fmt.Errorf("tunnel-image can not be empty")
	}

	if c.ProbeAddr == "" {
		return fmt.Errorf("probe-addr can not be empty")
	}

	if c.MetricsAddr == "" {
		return fmt.Errorf("metrics-addr can not be empty")
	}

	switch corev1.PullPolicy(c.TunnelImagePullPolicy) {
	case corev1.PullAlways:
	case corev1.PullIfNotPresent:
	case corev1.PullNever:
		// no op
	default:
		return fmt.Errorf("tunnel-image-pull-policy %s is not supported", c.TunnelImagePullPolicy)
	}

	return nil
}

func NewManager(cfg Config) (*Manager, error) {
	scheme := runtime.NewScheme()

	utilruntime.Must(clientgoscheme.AddToScheme(scheme))
	utilruntime.Must(glmv1.AddToScheme(scheme))

	ctrl.SetLogger(cfg.Logger)

	mgr, err := ctrl.NewManager(ctrl.GetConfigOrDie(), ctrl.Options{
		Scheme:                 scheme,
		MetricsBindAddress:     cfg.MetricsAddr,
		HealthProbeBindAddress: cfg.ProbeAddr,
		Port:                   9443,
		LeaderElection:         true,
		LeaderElectionID:       "leader-election.guardllama.guardllama.net",
	})
	if err != nil {
		return nil, err
	}

	return &Manager{
		Manager: mgr,
		cfg:     cfg,
	}, nil
}

type Manager struct {
	manager.Manager
	cfg Config
}

func (m *Manager) Run(ctx context.Context) error {
	if err := (&TunnelReconciler{
		TunnelImage:           m.cfg.TunnelImage,
		TunnelImagePullPolicy: m.cfg.TunnelImagePullPolicy,
		TunnelImagePullSecret: m.cfg.TunnelImagePullSecret,
		Client:                m.GetClient(),
		Logger:                ctrl.Log.WithName("Tunnel"),
	}).SetupWithManager(m); err != nil {
		return err
	}

	if err := (&glmv1.Tunnel{}).SetupWebhookWithManager(m); err != nil {
		return err
	}

	if err := m.AddHealthzCheck("healthz", healthz.Ping); err != nil {
		return err
	}
	if err := m.AddReadyzCheck("readyz", healthz.Ping); err != nil {
		return err
	}

	m.cfg.Logger.Info("starting manager")

	return m.Start(ctx)
}
