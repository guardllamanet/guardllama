package glminstaller

import (
	"context"

	"github.com/guardllamanet/guardllama/internal/installer"
	"github.com/guardllamanet/guardllama/internal/log"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"github.com/spf13/cobra"
)

func newInstallCmd() *cobra.Command {
	lc := installCmd{}

	rootCmd := &cobra.Command{
		Use:   "install",
		Short: "Install GuardLlama in self-hosted mode",
		RunE:  lc.Run,
	}

	rootCmd.AddCommand(newInstallClusterCmd())
	rootCmd.AddCommand(newInstallChartsCmd())

	return rootCmd
}

type installCmd struct {
}

func (c *installCmd) Run(cc *cobra.Command, args []string) error {
	ctx := log.IntoContext(context.Background())

	cfg, err := readConfig(ctx)
	if err != nil {
		return err
	}

	return installer.Install(
		ctx,
		cfg,
	)
}

func newInstallClusterCmd() *cobra.Command {
	lcc := installClusterCmd{}

	rootCmd := &cobra.Command{
		Use:   "cluster",
		Short: "Install only the Kubernetes cluster",
		RunE:  lcc.Run,
	}

	return rootCmd
}

type installClusterCmd struct {
}

func (c *installClusterCmd) Run(cc *cobra.Command, args []string) error {
	ctx := log.IntoContext(context.Background())

	cfg, err := readConfig(ctx)
	if err != nil {
		return err
	}

	return installer.InstallCluster(
		ctx,
		cfg,
	)
}

func newInstallChartsCmd() *cobra.Command {
	lcc := installChartsCmd{}

	rootCmd := &cobra.Command{
		Use:   "charts",
		Short: "Install Helm charts",
		RunE:  lcc.Run,
	}

	return rootCmd
}

type installChartsCmd struct {
}

func (c *installChartsCmd) Run(cc *cobra.Command, args []string) error {
	ctx := log.IntoContext(context.Background())

	cfg, err := readConfig(ctx)
	if err != nil {
		return err
	}

	return installer.InstallCharts(
		ctx,
		cfg,
	)
}

func readConfig(ctx context.Context) (*apiv1.ServerConfig, error) {
	return installer.ReadServerConfig(ctx, flagConfigPath)
}
