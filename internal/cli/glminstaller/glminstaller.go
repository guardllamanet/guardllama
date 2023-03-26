package glminstaller

import (
	"os"

	"github.com/guardllamanet/guardllama/internal/cli"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/spf13/cobra"
	"golang.org/x/exp/slog"
)

var (
	flagDebug      bool
	flagConfigPath string
)

func Main() error {
	rootCmd := &cobra.Command{
		Use:   "glm-installer",
		Short: "Easily install GuardLlama",
		PersistentPreRun: func(cmd *cobra.Command, args []string) {
			if flagDebug {
				log.SetLevel(slog.LevelDebug)
			}
		},
	}

	rootCmd.AddCommand(newInstallCmd())
	rootCmd.AddCommand(newUninstallCmd())
	rootCmd.AddCommand(cli.NewVersionCmd("glm-installer"))
	rootCmd.PersistentFlags().BoolVar(&flagDebug, "debug", os.Getenv("DEBUG") != "", "debug")
	rootCmd.PersistentFlags().StringVarP(&flagConfigPath, "config", "c", "", "path to the installer config file")

	WithTelemetry(rootCmd)

	return rootCmd.Execute()
}
