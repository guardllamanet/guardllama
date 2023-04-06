package e2etest

import (
	"flag"
	"os"
	"testing"

	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	"github.com/guardllamanet/guardllama/internal/log"
	"k8s.io/client-go/kubernetes/scheme"
)

var (
	flagWgTestImage string
	flagAPIServer   string
)

func TestMain(m *testing.M) {
	var e2etest bool
	flag.BoolVar(&e2etest, "e2e", false, "Run e2e tests")
	flag.StringVar(&flagWgTestImage, "wgtest-image", "ghcr.io/guardllamanet/glm-wgtest", "wgtest Docker image")
	flag.StringVar(&flagAPIServer, "api-server", "http://localhost:38080/api", "API server URL")
	flag.Parse()

	logger := log.NewTextLogger()

	if !e2etest {
		logger.Info("e2e tests are skipped")
		os.Exit(0)
	}

	if flagWgTestImage == "" {
		logger.Error("needs e2e test image")
		os.Exit(1)
	}

	if err := glmv1.AddToScheme(scheme.Scheme); err != nil {
		logger.Error("error adding scheme", "error", err.Error())
		os.Exit(1)
	}

	os.Exit(m.Run())
}
