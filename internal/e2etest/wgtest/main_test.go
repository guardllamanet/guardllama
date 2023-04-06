//go:wgtest

package wgtest

import (
	"flag"
	"os"
	"testing"

	"github.com/guardllamanet/guardllama/internal/log"
)

var (
	flagConf    string
	flagTestUrl string
)

func TestMain(m *testing.M) {
	flag.StringVar(&flagConf, "wg-conf", "", "wg config")
	flag.StringVar(&flagTestUrl, "test-url", "https://ipinfo.io", "test url")
	flag.Parse()

	logger := log.NewTextLogger()

	if flagConf == "" {
		logger.Error("Missing WireGuard config; funational tests are skipped")
		os.Exit(0)
	}

	os.Exit(m.Run())
}
