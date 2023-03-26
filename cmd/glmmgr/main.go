package main

import (
	"os"

	"github.com/guardllamanet/guardllama/internal/cli/glmmgr"
	"github.com/guardllamanet/guardllama/internal/log"
)

func main() {
	if err := glmmgr.Main(); err != nil {
		logger := log.NewLogger(false)
		logger.Error(err, "error executing command")
		os.Exit(1)
	}
}
