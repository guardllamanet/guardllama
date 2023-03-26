package testwgconn

import (
	"fmt"
	"net/url"
	"os"
	"regexp"
	"testing"

	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/google/uuid"
	"github.com/guardllamanet/guardllama/internal/e2etest/testutil"
	"github.com/guardllamanet/guardllama/internal/web/api"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client/tunnel_service"
)

func TestWGConn(t *testing.T) {
	k8sClient := testutil.NewClient(t)
	defer k8sClient.Cleanup(t)

	u, err := url.Parse(flagAPIServer)
	if err != nil {
		t.Fatal(err)
	}

	runtime := httptransport.New(u.Host, u.Path, []string{u.Scheme})
	runtime.DefaultAuthentication = httptransport.BasicAuth("", "root")
	runtime.Debug = os.Getenv("DEBUG") != ""
	c := client.New(runtime, strfmt.Default)

	resp, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(flagTunnel))
	if err != nil {
		t.Fatal(err)
	}
	tun := resp.Payload.Tunnel

	wgcfg := tun.Config.Wg.WgConfig
	re := regexp.MustCompile(`Endpoint = (.+):(\d+)`)
	wgcfg = re.ReplaceAllString(wgcfg, fmt.Sprintf("Endpoint = wg-%s.%s:%d", *tun.Name, *tun.Name, api.ConfigServerListenPort))

	testutil.RunWGConnTest(t, k8sClient, uuid.New().String(), "default", flagWgTestImage, wgcfg, flagTestURL)
}
