package main

import (
	"os"

	"github.com/guardllamanet/guardllama/internal/cli/glmmgr"
	"golang.org/x/exp/slog"
)

func main() {
	if err := glmmgr.Main(); err != nil {
		slog.Error("error executing command", "error", err.Error())
		os.Exit(1)
	}
}
