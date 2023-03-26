//go:wgtest

package wgtest

import (
	"net/http"
	"net/http/httputil"
	"os"
	"os/exec"
	"testing"
	"time"
)

func TestWireGuardConnection(t *testing.T) {
	if err := os.MkdirAll("/etc/wireguard", 0755); err != nil {
		t.Fatal(err)
	}

	if err := os.WriteFile("/etc/wireguard/wg0.conf", []byte(flagConf), 0600); err != nil {
		t.Fatal(err)
	}

	if err := execCmd("wg-quick", "up", "wg0"); err != nil {
		t.Fatal(err)
	}

	defer func() {
		if err := execCmd("wg-quick", "down", "wg0"); err != nil {
			t.Fatal(err)
		}
	}()

	hc := &http.Client{
		Timeout: time.Second * 20,
	}
	resp, err := hc.Get(flagTestUrl)
	if err != nil {
		t.Fatal(err)
	}

	dump, err := httputil.DumpResponse(resp, true)
	if err != nil {
		t.Fatal(err)
	}

	t.Log(string(dump))
}

func execCmd(c string, arg ...string) error {
	cmd := exec.Command(c, arg...)
	cmd.Env = []string{"LOG_LEVEL=debug"}
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}
