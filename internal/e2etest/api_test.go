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
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client/auth_service"
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

	authRuntime := httptransport.New(u.Host, "/", []string{u.Scheme})
	authRuntime.Debug = os.Getenv("DEBUG") != ""
	authClient := client.New(authRuntime, strfmt.Default)

	apiRuntime := httptransport.New(u.Host, "/api", []string{u.Scheme})
	apiRuntime.Debug = os.Getenv("DEBUG") != ""
	apiClient := client.New(apiRuntime, strfmt.Default)

	steps := []testutil.Step{
		{
			Name: "authenticate",
			Step: func(t *testing.T) {
				token := "root"
				resp, err := authClient.AuthService.AuthServiceAuthenticate(
					auth_service.NewAuthServiceAuthenticateParams().WithBody(&models.V1AuthenticateRequest{
						Creds: &models.Apiv1Credentials{
							Token: &token,
						},
					}))
				if err != nil {
					t.Fatal(err)
				}

				apiRuntime.DefaultAuthentication = httptransport.APIKeyAuth(
					"Authorization",
					"header",
					fmt.Sprintf("Bearer %s", resp.Payload.JwtToken.Token),
				)
			},
		},
		{
			Name: "get server",
			Step: func(t *testing.T) {
				resp, err := apiClient.ServerService.ServerServiceGetServer(server_service.NewServerServiceGetServerParams())
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
				resp, err := apiClient.TunnelService.TunnelServiceCreateTunnel(
					tunnel_service.NewTunnelServiceCreateTunnelParams().
						WithBody(&models.V1CreateTunnelRequest{
							Ag: &models.V1AdGuardConfig{
								BlockLists: []*models.AdGuardConfigBlockList{
									{
										Name: "AdGuard DNS filter",
										URL:  "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.tx",
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
				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err := apiClient.TunnelService.TunnelServiceListTunnels(tunnel_service.NewTunnelServiceListTunnelsParams())
					if err != nil {
						return err
					}

					if diff := cmp.Diff(1, len(resp.Payload.Tunnels)); diff != "" {
						return fmt.Errorf("mismatch of number of tunnels (-want +got): %s", diff)
					}

					return nil
				})
			},
		},
		{
			Name: "get a tunnel",
			Step: func(t *testing.T) {
				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err := apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
					if err != nil {
						return err
					}

					if *resp.Payload.Tunnel.Status.State == models.TunnelStatusStateREADY {
						wgcfg = resp.Payload.Tunnel.Config.Wg.WgConfig
						return nil
					}

					return fmt.Errorf("tunnel status not ready: %v", resp.Payload.Tunnel.Status)
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
				resp, err := apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}

				if !resp.Payload.Tunnel.Config.Ag.FilteringEnabled {
					t.Fatalf("dns filering should be enabled")
				}

				_, err = apiClient.TunnelService.TunnelServiceUpdateDNSFilteringEnabled(
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
					resp, err = apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
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
				resp, err := apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}

				if diff := cmp.Diff(1, len(resp.Payload.Tunnel.Config.Ag.BlockLists)); diff != "" {
					t.Fatalf("mismatch of number of blocklists (-want +got): %s", diff)
				}

				_, err = apiClient.TunnelService.TunnelServiceUpdateDNSBlockLists(
					tunnel_service.NewTunnelServiceUpdateDNSBlockListsParams().
						WithName(*tun.Name).
						WithBody(tunnel_service.TunnelServiceUpdateDNSBlockListsBody{
							BlockLists: []*models.AdGuardConfigBlockList{
								{
									Name: "AdGuard DNS filter",
									URL:  "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.tx",
								},
								{
									Name: "AdAway Default Blocklist",
									URL:  "https://adaway.org/hosts.txt",
								},
							},
						}),
				)
				if err != nil {
					t.Fatal(err)
				}

				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					resp, err = apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
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
			Name: "remove a tunnel",
			Step: func(t *testing.T) {
				_, err := apiClient.TunnelService.TunnelServiceRemoveTunnel(tunnel_service.NewTunnelServiceRemoveTunnelParams().WithName(*tun.Name))
				if err != nil {
					t.Fatal(err)
				}
			},
		},
		{
			Name: "get a tunnel not found",
			Step: func(t *testing.T) {
				_, err := apiClient.TunnelService.TunnelServiceGetTunnel(tunnel_service.NewTunnelServiceGetTunnelParams().WithName(*tun.Name))
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
