package glmmgr

import (
	"context"
	"net"

	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/wg"
	"github.com/spf13/cobra"
)

func newWgCmd() *cobra.Command {
	cmd := wgCmd{}

	rootCmd := &cobra.Command{
		Use:     "wg",
		Short:   "Start wg tunnel",
		PreRunE: cmd.setupConfig,
		RunE:    cmd.run,
	}
	rootCmd.Flags().String("http-addr", ":8080", "the address that tunnel endpoint binds to")
	rootCmd.Flags().String("tunnel-config", "", "path to tunnel config")

	return rootCmd
}

type wgCmd struct {
	cfg wg.ServerConfig
}

func (s *wgCmd) setupConfig(cmd *cobra.Command, args []string) error {
	if err := unmarshalFlags(cmd, &s.cfg); err != nil {
		return err
	}
	if err := s.cfg.Validate(); err != nil {
		return err
	}

	s.cfg.Logger = log.NewLogger(flagDebug)

	return nil
}

func (s *wgCmd) run(cmd *cobra.Command, args []string) error {
	s.cfg.Logger.Info("Starting tunnel server", "addr", s.cfg.HttpAddr)
	httpln, err := net.Listen("tcp", s.cfg.HttpAddr)
	if err != nil {
		return err
	}
	defer httpln.Close()

	srv := wg.NewServer(s.cfg)

	return srv.Run(context.Background(), httpln)
}
