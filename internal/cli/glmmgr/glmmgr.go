package glmmgr

import (
	"fmt"
	"os"
	"strings"

	"github.com/guardllamanet/guardllama/internal/cli"
	"github.com/ory/viper"
	"github.com/spf13/cobra"
	"github.com/spf13/pflag"
)

var (
	flagDebug bool
)

func Main() error {
	rootCmd := &cobra.Command{
		Use:   "glmmgr",
		Short: "GuardLlama Manager",
	}

	rootCmd.AddCommand(newCtrlCmd())
	rootCmd.AddCommand(newWebCmd())
	rootCmd.AddCommand(newWgCmd())
	rootCmd.AddCommand(cli.NewVersionCmd("glmmgr"))

	rootCmd.PersistentFlags().String("config", "", "config file")
	rootCmd.PersistentFlags().BoolVar(&flagDebug, "debug", false, "debug")

	return rootCmd.Execute()
}

func unmarshalFlags(cmd *cobra.Command, opts interface{}) error {
	v := viper.New()

	cmd.Flags().VisitAll(func(flag *pflag.Flag) {
		flagName := flag.Name
		if flagName != "config" && flagName != "help" {
			if err := v.BindPFlag(flagName, flag); err != nil {
				panic(fmt.Errorf("error binding flag '%s': %w", flagName, err).Error())
			}
		}
	})

	v.AutomaticEnv()
	v.SetEnvKeyReplacer(strings.NewReplacer("-", "_"))
	v.SetEnvPrefix("GLMMGR")

	cfgFile, err := cmd.Flags().GetString("config")
	if err != nil {
		return err
	}

	if _, err := os.Stat(cfgFile); err == nil {
		v.SetConfigFile(cfgFile)
	}

	if err := v.ReadInConfig(); err != nil {
		if _, ok := err.(viper.ConfigFileNotFoundError); !ok {
			return fmt.Errorf("Error loading config file %s: %w", cfgFile, err)
		}
	}

	return v.Unmarshal(opts)
}
