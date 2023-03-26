package e2etest

import (
	"context"
	"fmt"
	"net/url"
	"os"
	"regexp"
	"strings"
	"testing"
	"time"

	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/google/go-cmp/cmp"
	"github.com/guardllamanet/guardllama/internal/e2etest/testutil"
	"github.com/guardllamanet/guardllama/internal/web/api"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client/server_service"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client/tunnel_service"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/models"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

func Test_APITunnel(t *testing.T) {
	k8sClient := testutil.NewClient(t)
	defer k8sClient.Cleanup(t)

	var (
		tun   *models.V1Tunnel
		wgcfg string
	)

	k8sClient.CleanupLater(func() {
		if tun == nil {
			// skip cleaning up tunnel ns
			return
		}

		ns := &corev1.Namespace{
			ObjectMeta: metav1.ObjectMeta{
				Name: *tun.Name,
			},
		}
		if err := k8sClient.Client.Delete(context.Background(), ns); err != nil {
			t.Fatal(err)
		}
	})

	u, err := url.Parse(flagAPIServer)
	if err != nil {
		t.Fatal(err)
	}

	runtime := httptransport.New(u.Host, u.Path, []string{u.Scheme})
	runtime.DefaultAuthentication = httptransport.BasicAuth("", "root")
	runtime.Debug = os.Getenv("DEBUG") != ""
	c := client.New(runtime, strfmt.Default)

	steps := []testutil.Step{
		{
			Name: "get server",
			Step: func(t *testing.T) {
				resp, err := c.ServerService.ServerServiceGetServer(server_service.NewServerServiceGetServerParams())
				if err != nil {
					t.Fatal(err)
				}

				if resp.Payload.Server.Status.ServerVersion == "" {
					t.Fatalf("server version should not be empty")
				}
				if resp.Payload.Server.Status.MachineIP == "" {
					t.Fatal("machine ip should not be empty")
				}
			},
		},
		{
			Name: "create a tunnel",
			Step: func(t *testing.T) {
				resp, err := c.TunnelService.TunnelServiceCreateTunnel(
					tunnel_service.NewTunnelServiceCreateTunnelParams().
						WithBody(&models.V1CreateTunnelRequest{
							Ag: &models.V1AdGuardConfig{
								BlockLists: []*models.AdGuardConfigBlockList{
									{
										ID:      0,
										Name:    "AdGuard DNS filter",
										URL:     "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.tx",
										Enabled: true,
									},
								},
							},
						}),
				)
				if err != nil {
					t.Fatal(err)
				}

				tun = resp.Payload.Tunnel
			},
		},
		{
			Name: "list tunnel",
			Step: func(t *testing.T) {
				resp, err := c.TunnelService.TunnelServiceListTunnels(tunnel_service.NewTunnelServiceListTunnelsParams())
				if err != nil {
					t.Fatal(err)
				}

				if diff := cmp.Diff(1, len(resp.Payload.Tunnels)); diff != "" {
					t.Fatalf("mismatch of number of tunnels (-want +got): %s", diff)
				}
			},
		},
		{
			Name: "get a tunnel",
			Step: func(t *testing.T) {
				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
					if err != nil {
						return err
					}

					if *resp.Payload.Tunnel.Status.State == models.TunnelStatusStateREADY {
						wgcfg = resp.Payload.Tunnel.Config.Wg.WgConfig
						return nil
					}

					return fmt.Errorf("tunnel status not ready: %v", resp.Payload.Tunnel)
				})

			},
		},
		{
			Name: "validate wg connection",
			Step: func(t *testing.T) {
				re := regexp.MustCompile(`Endpoint = (.+):(\d+)`)
				wgcfg := re.ReplaceAllString(wgcfg, fmt.Sprintf("Endpoint = wg-%s.%s:%d", *tun.Name, *tun.Name, api.ConfigServerListenPort))

				testutil.RunWGConnTest(t, k8sClient, *tun.Name, *tun.Name, flagWgTestImage, wgcfg, "https://ipinfo.io")
			},
		},
		{
			Name: "update dns filtering",
			Step: func(t *testing.T) {
				resp, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}

				if !resp.Payload.Tunnel.Config.Ag.FilteringEnabled {
					t.Fatalf("dns filering should be enabled")
				}

				_, err = c.TunnelService.TunnelServiceUpdateDNSFilteringEnabled(
					tunnel_service.NewTunnelServiceUpdateDNSFilteringEnabledParams().
						WithName(*tun.Name).
						WithBody(tunnel_service.TunnelServiceUpdateDNSFilteringEnabledBody{
							FilteringEnabled: false,
						}),
				)
				if err != nil {
					t.Fatal(err)
				}

				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err = c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
					if err != nil {
						return err
					}

					if resp.Payload.Tunnel.Config.Ag.FilteringEnabled {
						return fmt.Errorf("dns filering should be disabled")
					}

					return nil
				})
			},
		},
		{
			Name: "update dns block lists",
			Step: func(t *testing.T) {
				resp, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}

				if diff := cmp.Diff(1, len(resp.Payload.Tunnel.Config.Ag.BlockLists)); diff != "" {
					t.Fatalf("mismatch of number of blocklists (-want +got): %s", diff)
				}

				_, err = c.TunnelService.TunnelServiceUpdateDNSBlockLists(
					tunnel_service.NewTunnelServiceUpdateDNSBlockListsParams().
						WithName(*tun.Name).
						WithBody(tunnel_service.TunnelServiceUpdateDNSBlockListsBody{
							BlockLists: []*models.AdGuardConfigBlockList{
								{
									ID:      0,
									Name:    "AdGuard DNS filter",
									URL:     "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.tx",
									Enabled: true,
								},
								{
									ID:      1,
									Name:    "AdAway Default Blocklist",
									URL:     "https://adaway.org/hosts.txt",
									Enabled: true,
								},
							},
						}),
				)
				if err != nil {
					t.Fatal(err)
				}

				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err = c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
					if err != nil {
						return err
					}

					if diff := cmp.Diff(2, len(resp.Payload.Tunnel.Config.Ag.BlockLists)); diff != "" {
						return fmt.Errorf("mismatch of number of blocklists (-want +got): %s", diff)
					}

					return nil
				})
			},
		},
		{
			Name: "update dns filtering rules",
			Step: func(t *testing.T) {
				resp, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}

				if diff := cmp.Diff([]*models.V1AdGuardConfigRule{}, resp.Payload.Tunnel.Config.Ag.Rules); diff != "" {
					t.Fatalf("mismatch of filtering rules (-want +got): %s", diff)
				}

				_, err = c.TunnelService.TunnelServiceUpdateDNSFilteringRules(
					tunnel_service.NewTunnelServiceUpdateDNSFilteringRulesParams().
						WithName(*tun.Name).
						WithBody(tunnel_service.TunnelServiceUpdateDNSFilteringRulesBody{
							Rules: []*models.V1AdGuardConfigRule{
								{
									Rule: "||example.org^",
								},
							},
						}),
				)
				if err != nil {
					t.Fatal(err)
				}

				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err = c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
					if err != nil {
						return err
					}

					if diff := cmp.Diff([]*models.V1AdGuardConfigRule{{Rule: "||example.org^"}}, resp.Payload.Tunnel.Config.Ag.Rules); diff != "" {
						return fmt.Errorf("mismatch of filtering rules (-want +got): %s", diff)
					}

					return nil
				})
			},
		},
		{
			Name: "remove a tunnel",
			Step: func(t *testing.T) {
				_, err := c.TunnelService.TunnelServiceRemoveTunnel(tunnel_service.NewTunnelServiceRemoveTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}
			},
		},
		{
			Name: "get a tunnel not found",
			Step: func(t *testing.T) {
				_, err := c.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err == nil {
					t.Fatal("error should not be nil")
				}

				if !strings.Contains(err.Error(), "not found") {
					t.Fatalf("error should cotnain not found: %s", err.Error())
				}
			},
		},
	}

	testutil.RunSteps(t, steps)
}
