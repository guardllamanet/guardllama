package testwgconn

import (
	"flag"
	"os"
	"testing"

	"github.com/guardllamanet/guardllama/internal/log"
)

var (
	flagAPIServer   string
	flagTestURL     string
	flagTunnel      string
	flagWgTestImage string
)

func TestMain(m *testing.M) {
	flag.StringVar(&flagAPIServer, "api-server", "http://localhost:38080/api", "API server URL")
	flag.StringVar(&flagTestURL, "test-url", "https://ipinfo.io", "test url")
	flag.StringVar(&flagTunnel, "tunnel", "", "tunnel name")
	flag.StringVar(&flagWgTestImage, "wgtest-image", "ghcr.io/guardllamanet/glm-wgtest", "wgtest Docker image")
	flag.Parse()

	logger := log.NewTextLogger()

	if flagTunnel == "" {
		logger.Error("Missing tunnel; skipping test")
		os.Exit(0)
	}

	os.Exit(m.Run())
}
