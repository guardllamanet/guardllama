package cli

import (
	"fmt"

	"github.com/guardllamanet/guardllama/internal/build"
	"github.com/spf13/cobra"
)

func NewVersionCmd(cmdName string) *cobra.Command {
	cmd := &cobra.Command{
		Use:    "version",
		Hidden: true,
		RunE: func(cmd *cobra.Command, args []string) error {
			_, err := fmt.Print(format(cmdName))
			return err
		},
	}

	return cmd
}

func format(cmdName string) string {
	return fmt.Sprintf("%s %s\n", cmdName, build.FormattedVersion())
}
