package glmmgr

import (
	"context"
	"syscall"

	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	"github.com/guardllamanet/guardllama/internal/web"
	"github.com/oklog/run"
	"github.com/spf13/cobra"
	"k8s.io/apimachinery/pkg/runtime"
	utilruntime "k8s.io/apimachinery/pkg/util/runtime"
	clientgoscheme "k8s.io/client-go/kubernetes/scheme"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/cluster"
)

func newWebCmd() *cobra.Command {
	cmd := webCmd{}

	rootCmd := &cobra.Command{
		Use:   "web",
		Short: "GuardLlama web server",
		RunE:  cmd.run,
	}
	rootCmd.Flags().String("web-addr", ":8080", "the address that the web process binds to")
	rootCmd.Flags().String("jwt-sign-key-path", "", "the JWT signing key path")
	rootCmd.Flags().String("jwt-verify-key-path", "", "the JWT verify key path")

	return rootCmd
}

type webCmd struct {
	cfg web.Config
}

func (s *webCmd) run(cmd *cobra.Command, args []string) error {
	if err := unmarshalFlags(cmd, &s.cfg); err != nil {
		return err
	}
	if err := s.cfg.Validate(); err != nil {
		return err
	}
	s.cfg.Logger = log.NewTextLogger().WithGroup("web")

	jwtauth, err := util.NewJWTAuth(s.cfg.JWTSignKeyPath, s.cfg.JWTVerifyKeyPath)
	if err != nil {
		return err
	}
	s.cfg.JWTAuth = jwtauth

	cls, err := newCluster()
	if err != nil {
		return err
	}
	s.cfg.Client = cls.GetClient()

	var (
		g   run.Group
		ctx = context.Background()
		srv = web.NewServer(s.cfg)
	)
	g.Add(run.SignalHandler(ctx, syscall.SIGTERM))
	{
		ctx, cancel := context.WithCancel(ctx)
		g.Add(func() error {
			return cls.Start(ctx)
		}, func(err error) {
			cancel()
		})
	}
	{
		ctx, cancel := context.WithCancel(ctx)
		g.Add(func() error {
			return srv.Run(ctx)
		}, func(err error) {
			cancel()
		})
	}

	return g.Run()
}

func newCluster() (cluster.Cluster, error) {
	scheme := runtime.NewScheme()

	utilruntime.Must(clientgoscheme.AddToScheme(scheme))
	utilruntime.Must(glmv1.AddToScheme(scheme))

	return cluster.New(ctrl.GetConfigOrDie(), func(clusterOptions *cluster.Options) {
		clusterOptions.Scheme = scheme
	})
}
