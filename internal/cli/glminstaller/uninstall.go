package glminstaller

import (
	"context"

	"github.com/guardllamanet/guardllama/internal/installer"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/spf13/cobra"
)

func newUninstallCmd() *cobra.Command {
	lm := uninstallCmd{}

	rootCmd := &cobra.Command{
		Use:   "uninstall",
		Short: "Uninstall the GuardLlama instance running in self-hosted mode",
		RunE:  lm.run,
	}

	return rootCmd
}

type uninstallCmd struct {
}

func (c *uninstallCmd) run(cc *cobra.Command, args []string) error {
	ctx := log.IntoContext(context.Background())

	cfg, err := readConfig(ctx)
	if err != nil {
		return err
	}

	return installer.Uninstall(
		ctx,
		cfg,
	)
}
