package glmmgr

import (
	"context"
	"syscall"

	"github.com/guardllamanet/guardllama/internal/controller"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/oklog/run"
	"github.com/spf13/cobra"
)

func newCtrlCmd() *cobra.Command {
	cmd := ctrlCmd{}

	rootCmd := &cobra.Command{
		Use:   "ctrl",
		Short: "Kubernetes controller that orchestrates tunnels",
		RunE:  cmd.run,
	}
	rootCmd.Flags().String("tunnel-image", "ghcr.io/guardllamanet/glm-tunnel:latest", "Tunnel Docker image")
	rootCmd.Flags().String("tunnel-image-pull-policy", "Always", "Tunnel Docker image pull policy")
	rootCmd.Flags().String("tunnel-image-pull-secret", "", "Tunnel Docker image pull secret (in JSON format)")
	rootCmd.Flags().String("api-addr", ":8080", "the address that api endpoint binds to")
	rootCmd.Flags().String("probe-addr", ":8081", "the address that probe endpoint binds to")
	rootCmd.Flags().String("metrics-addr", ":8082", "the address that metric endpoint binds to")

	return rootCmd
}

type ctrlCmd struct {
	cfg controller.Config
}

func (s *ctrlCmd) run(cmd *cobra.Command, args []string) error {
	if err := unmarshalFlags(cmd, &s.cfg); err != nil {
		return err
	}
	if err := s.cfg.Validate(); err != nil {
		return err
	}

	s.cfg.Logger = log.NewLogger(flagDebug).WithName("ctrl")

	mgr, err := controller.NewManager(s.cfg)
	if err != nil {
		return err
	}

	var (
		g   run.Group
		ctx = context.Background()
	)
	g.Add(run.SignalHandler(ctx, syscall.SIGTERM))
	{
		ctx, cancel := context.WithCancel(ctx)
		g.Add(func() error {
			return mgr.Run(ctx)
		}, func(err error) {
			cancel()
		})
	}

	return g.Run()
}
