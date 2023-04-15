package api

import (
	"context"
	"crypto/rand"
	"encoding/base64"
	"errors"
	"fmt"
	"net"
	"net/http"
	"strconv"
	"strings"
	"time"

	"github.com/docker/docker/pkg/namesgenerator"
	"github.com/go-chi/chi/v5/middleware"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	adguard "github.com/guardllamanet/guardllama/internal/adguard/gen"
	"github.com/guardllamanet/guardllama/internal/controller"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	tunnelclient "github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client"
	"github.com/guardllamanet/guardllama/proto/gen/api/v1/swagger/client/wire_guard_service"
	"golang.org/x/crypto/curve25519"
	"golang.org/x/sync/errgroup"
	"golang.zx2c4.com/wireguard/device"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
	corev1 "k8s.io/api/core/v1"
	apierrors "k8s.io/apimachinery/pkg/api/errors"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/util/validation"
	"sigs.k8s.io/controller-runtime/pkg/client"
	"sigs.k8s.io/controller-runtime/pkg/controller/controllerutil"
)

const (
	annonationTunnelSecretVersion = controller.SystemLabelPrefix + "/tunnel-secret-version"
	annotationRequestID           = "request-id"

	secretKeyServerPrivateKey = "serverPrivateKey"
	secretKeyServerPublicKey  = "serverPublicKey"
	secretKeyClientPrivateKey = "clientPrivateKey"
	secretKeyClientPublicKey  = "clientPublicKey"
	secretKeyPresharedKey     = "presharedKey"

	configServerAddress    = "10.6.0.1/32"
	ConfigServerListenPort = 51820
	configServerPostUp     = "iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -I POSTROUTING 1 -s 10.6.0.2/32 -o eth+ -j MASQUERADE"
	configServerPostDown   = "iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING 1 -s 10.6.0.2/32 -o eth+ -j MASQUERADE"
	configClientAddress    = "10.6.0.2/32"
)

type TunnelService struct {
	apiv1.UnimplementedTunnelServiceServer

	*K8sClient
	EndpointHost string
	Logger       *log.Logger
}

func (s *TunnelService) CreateTunnel(ctx context.Context, req *apiv1.CreateTunnelRequest) (*apiv1.CreateTunnelResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	name := req.Name
	if name == "" {
		name = strings.ReplaceAll(namesgenerator.GetRandomName(10), "_", "-")
	}

	errList := validation.IsDNS1123Subdomain(name)
	if len(errList) > 0 {
		return nil, StatusInvalidArg(errors.New(strings.Join(errList, ", ")))
	}

	var existingTun glmv1.Tunnel
	if err := s.Get(ctx, client.ObjectKey{Namespace: name, Name: name}, &existingTun); err == nil {
		return nil, StatusInvalidArg(fmt.Errorf("tunnel %q already exists", name))
	}

	skey, spub, err := genKeyPair()
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error generating interface keypair: %w", err))
	}

	ckey, cpub, err := genKeyPair()
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error generating peer keypair: %w", err))
	}

	pkey, _, err := genKeyPair()
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error generating preshared key: %w", err))
	}

	tun, err := createTunnel(ctx, s.K8sClient, name, skey, spub, ckey, cpub, pkey, req.Agh)
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error creating tunnel: %w", err))
	}

	tunnel, err := s.fetchClientTunnel(ctx, tun, false)
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error getting tunnel info: %w", err))
	}

	return &apiv1.CreateTunnelResponse{
		Tunnel: tunnel,
	}, nil
}

func (s *TunnelService) GetTunnel(ctx context.Context, req *apiv1.GetTunnelRequest) (*apiv1.GetTunnelResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	tun, err := s.getTunnel(ctx, req.Name)
	if err != nil {
		return nil, StatusNotFound(err)
	}

	tunnel, err := s.fetchClientTunnel(ctx, tun, true)
	if err != nil {
		return nil, StatusInternal(fmt.Errorf("error getting tunnel info: %w", err))
	}

	return &apiv1.GetTunnelResponse{
		Tunnel: tunnel,
	}, nil
}

func (s *TunnelService) ListTunnels(ctx context.Context, req *apiv1.ListTunnelsRequest) (*apiv1.ListTunnelsResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	var tunList glmv1.TunnelList
	if err := s.List(ctx, &tunList); err != nil {
		return nil, StatusInternal(err)
	}

	g, ctx := errgroup.WithContext(ctx)
	results := make([]*apiv1.Tunnel, len(tunList.Items))
	for i, tun := range tunList.Items {
		i, tun := i, tun
		g.Go(func() error {
			if controller.IsDeleted(&tun) {
				return nil
			}

			tunnel, err := s.fetchClientTunnel(ctx, &tun, false)
			if err != nil {
				s.Logger.Error("error fetching client tunnel", "error", err.Error())
				// ignore fetch error
				return nil
			}

			results[i] = tunnel

			return nil
		})
	}

	if err := g.Wait(); err != nil {
		return nil, err
	}

	var tunnels []*apiv1.Tunnel
	for _, tun := range results {
		if tun == nil {
			continue
		}

		tunnels = append(tunnels, tun)
	}

	return &apiv1.ListTunnelsResponse{
		Tunnels: tunnels,
	}, nil
}

func (s *TunnelService) RemoveTunnel(ctx context.Context, req *apiv1.RemoveTunnelRequest) (*apiv1.RemoveTunnelResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	// delete tunnel
	existingTun, err := s.getTunnel(ctx, req.Name)
	if err != nil {
		return nil, StatusNotFound(err)
	}
	if err := s.Delete(ctx, existingTun); err != nil {
		return nil, StatusInternal(err)
	}

	// delete ns
	var ns corev1.Namespace
	if err := s.Get(ctx, client.ObjectKey{Name: req.Name}, &ns); err != nil {
		if apierrors.IsNotFound(err) {
			return nil, StatusNotFound(fmt.Errorf("tunnel %s not found", req.Name))
		}

		return nil, StatusInternal(err)
	}
	if err := s.Delete(ctx, &ns); err != nil {
		return nil, StatusInternal(err)
	}

	return &apiv1.RemoveTunnelResponse{}, nil
}

func (s *TunnelService) UpdateDNSFilteringEnabled(ctx context.Context, req *apiv1.UpdateDNSFilteringEnabledRequest) (*apiv1.UpdateDNSFilteringEnabledResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	tun, err := s.getTunnel(ctx, req.Name)
	if err != nil {
		return nil, StatusNotFound(err)
	}

	tun.Annotations = annotateWithRequestID(ctx, tun)
	tun.Spec.DNS.AdGuardHome.FilteringEnabled = &req.FilteringEnabled
	if err := s.K8sClient.Update(ctx, tun); err != nil {
		return nil, StatusInternal(err)
	}

	return &apiv1.UpdateDNSFilteringEnabledResponse{}, nil
}

func (s *TunnelService) UpdateDNSBlockLists(ctx context.Context, req *apiv1.UpdateDNSBlockListsRequest) (*apiv1.UpdateDNSBlockListsResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	tun, err := s.getTunnel(ctx, req.Name)
	if err != nil {
		return nil, StatusNotFound(err)
	}

	tun.Annotations = annotateWithRequestID(ctx, tun)
	tun.Spec.DNS.AdGuardHome.BlockLists = convertBlockLists(req.BlockLists)
	if err := s.K8sClient.Update(ctx, tun); err != nil {
		return nil, StatusInternal(err)
	}

	return &apiv1.UpdateDNSBlockListsResponse{}, nil
}

func (s *TunnelService) getTunnel(ctx context.Context, name string) (*glmv1.Tunnel, error) {
	var tun glmv1.Tunnel
	if err := s.Get(ctx, client.ObjectKey{Namespace: name, Name: name}, &tun); err != nil {
		if apierrors.IsNotFound(err) {
			return nil, fmt.Errorf("tunnel %s not found", name)
		}

		return nil, err
	}

	if controller.IsDeleted(&tun) {
		return nil, fmt.Errorf("tunnel %s not found", tun.Name)
	}

	return &tun, nil
}

func (s *TunnelService) fetchClientTunnel(ctx context.Context, tun *glmv1.Tunnel, withFullStatus bool) (*apiv1.Tunnel, error) {
	cfg, err := s.makeClientTunnelConfig(ctx, tun)
	if err != nil {
		return nil, err
	}

	var (
		state   = apiv1.TunnelStatus_PENDING
		cond    = tun.Status.GetCondition(glmv1.ConditionTunnelReady)
		details string
	)
	if cond != nil {
		if cond.IsTrue() {
			state = apiv1.TunnelStatus_READY
		} else if cond.IsFalse() {
			state = apiv1.TunnelStatus_ERROR
		}
		details = fmt.Sprintf("[%s] %s", cond.Reason, cond.Message)
	}

	var updatedAt *timestamppb.Timestamp
	if ua := tun.Status.UpdatedAt; ua != nil {
		updatedAt = timestamppb.New(ua.Time)
	}

	tunnel := &apiv1.Tunnel{
		Name:   tun.Name,
		Config: cfg,
		Status: &apiv1.TunnelStatus{
			State:   state,
			Details: details,
			Dns: &apiv1.TunnelStatus_Agh{
				Agh: &apiv1.AdGuardHomeStatus{
					Dns: tun.Status.DNS,
				},
			},
		},
		CreatedAt: timestamppb.New(tun.GetObjectMeta().GetCreationTimestamp().Time),
		UpdatedAt: updatedAt,
	}

	if !withFullStatus {
		return tunnel, nil
	}

	// only fetch peer statuses & dns query logs when tunnel is ready
	if tunnel.Status.State == apiv1.TunnelStatus_READY {
		// wireguard status
		dev, err := fetchWireGuardDevice(ctx, tun)
		if err != nil {
			return nil, fmt.Errorf("error fetching tunnel peer statuses: %w", err)
		}
		tunnel.Status.Protocol = &apiv1.TunnelStatus_Wg{
			Wg: &apiv1.WireGuardStatus{
				Device: dev,
			},
		}

		status, err := fetchAdGuardHomeStatus(ctx, tun)
		if err != nil {
			return nil, fmt.Errorf("error fetching AdGuardHome status: %w", err)
		}

		agh := tunnel.Status.GetAgh()
		agh.FilteringEnabled = util.ToBool(status.Enabled)

		var blocklists []*apiv1.AdGuardHomeConfig_BlockList
		for _, bl := range status.Filters {
			if bl.Enabled {
				blocklists = append(blocklists, &apiv1.AdGuardHomeConfig_BlockList{
					Name: bl.Name,
					Url:  bl.Url,
				})
			}
		}
		agh.BlockLists = blocklists
	}

	return tunnel, nil
}

func (s *TunnelService) makeClientTunnelConfig(ctx context.Context, tun *glmv1.Tunnel) (*apiv1.TunnelConfig, error) {
	data, err := s.K8sClient.GetSecret(ctx, tun.Name, tun.Namespace)
	if err != nil {
		return nil, fmt.Errorf("error getting secret %s/%s: %w", tun.Namespace, tun.Name, err)
	}

	peerPrivateKey, ok := data[secretKeyNameClientPrivateKey(0)]
	if !ok {
		return nil, fmt.Errorf("cannot find peer private key")
	}

	peerPresharedKey, ok := data[secretKeyNamePresharedKey(0)]
	if !ok {
		return nil, fmt.Errorf("cannot find preshared key")
	}

	interfacePublicKey, ok := data[secretKeyServerPublicKey]
	if !ok {
		return nil, fmt.Errorf("cannot find server public key")
	}

	filteringEnabled := true
	if e := tun.Spec.DNS.AdGuardHome.FilteringEnabled; e != nil {
		filteringEnabled = *e
	}

	var blockLists []*apiv1.AdGuardHomeConfig_BlockList
	for _, bl := range tun.Spec.DNS.AdGuardHome.BlockLists {
		blockLists = append(blockLists, &apiv1.AdGuardHomeConfig_BlockList{
			Name: bl.Name,
			Url:  bl.URL,
		})
	}

	wg := &apiv1.WireGuardConfig{
		Interface: &apiv1.WireGuardInterface{
			PrivateKey: string(peerPrivateKey),
			Address:    []string{configClientAddress},
			Dns:        tun.Status.DNS,
		},
		Peers: []*apiv1.WireGuardPeer{
			{
				PublicKey:    string(interfacePublicKey),
				PresharedKey: string(peerPresharedKey),
				AllowedIps:   allowServerIPs(),
				Endpoint:     s.endpoint(tun.Status.IngressPort),
			},
		},
	}

	wgcfg, err := wgConfig(wg)
	if err != nil {
		return nil, fmt.Errorf("error generating wg config: %w", err)
	}
	wg.WgConfig = wgcfg

	return &apiv1.TunnelConfig{
		Protocol: &apiv1.TunnelConfig_Wg{
			Wg: wg,
		},
		Dns: &apiv1.TunnelConfig_Agh{
			Agh: &apiv1.AdGuardHomeConfig{
				FilteringEnabled: &filteringEnabled,
				BlockLists:       blockLists,
			},
		},
	}, nil
}

// TODO: allow customize host instead of external IP
func (s *TunnelService) endpoint(port int32) string {
	return net.JoinHostPort(s.EndpointHost, strconv.FormatInt(int64(port), 10))
}

func fetchWireGuardDevice(ctx context.Context, tun *glmv1.Tunnel) (*apiv1.WireGuardDevice, error) {
	runtime := httptransport.New(tun.WireGuardAdminServiceHost(), "", []string{"http"})
	client := tunnelclient.New(runtime, strfmt.Default)
	resp, err := client.WireGuardService.WireGuardServiceGetWireGuardDevice(wire_guard_service.NewWireGuardServiceGetWireGuardDeviceParamsWithContext(ctx).WithHTTPClient(newHTTPClient()))
	if err != nil {
		return nil, err
	}

	var (
		dev   = resp.GetPayload().Device
		peers []*apiv1.WireGuardDevicePeer
	)
	for _, peer := range dev.Peers {
		pki, err := time.ParseDuration(peer.PersistentKeepaliveInterval)
		if err != nil {
			continue
		}

		var lht *timestamppb.Timestamp
		if t := peer.LastHandshakeTime; !time.Time(t).IsZero() {
			lht = timestamppb.New(time.Time(t))
		}

		var rb int64
		if b := peer.ReceiveBytes; b != "" {
			i, _ := strconv.ParseInt(b, 10, 64)
			rb = i
		}
		var tb int64
		if b := peer.TransmitBytes; b != "" {
			i, _ := strconv.ParseInt(b, 10, 64)
			tb = i
		}

		peers = append(peers, &apiv1.WireGuardDevicePeer{
			PublicKey:                   peer.PublicKey,
			PresharedKey:                peer.PresharedKey,
			Endpoint:                    peer.Endpoint,
			PersistentKeepaliveInterval: durationpb.New(pki),
			LastHandshakeTime:           lht,
			ReceiveBytes:                rb,
			TransmitBytes:               tb,
			AllowedIps:                  peer.AllowedIps,
			ProtocolVersion:             peer.ProtocolVersion,
		})
	}

	return &apiv1.WireGuardDevice{
		Name:         dev.Name,
		Type:         apiv1.WireGuardDevice_DeviceType(apiv1.WireGuardDevice_DeviceType_value[string(*dev.Type)]),
		PublicKey:    dev.PublicKey,
		ListenPort:   dev.ListenPort,
		FirewallMark: dev.FirewallMark,
		Peers:        peers,
	}, nil
}

func fetchAdGuardHomeStatus(ctx context.Context, tun *glmv1.Tunnel) (*adguard.FilterStatus, error) {
	conf := adguard.NewConfiguration()
	conf.Host = tun.AdGuardHomeServiceHost()
	conf.Scheme = "http"
	conf.HTTPClient = newHTTPClient()

	client := adguard.NewAPIClient(conf)

	status, _, err := client.FilteringApi.FilteringStatus(ctx).Execute()
	if err != nil {
		return nil, err
	}

	return status, nil
}

func genKeyPair() (*device.NoisePrivateKey, *device.NoisePublicKey, error) {
	var key device.NoisePrivateKey
	if _, err := rand.Read(key[:]); err != nil {
		return nil, nil, err
	}

	return &key, publicKey(&key), nil
}

func publicKey(sk *device.NoisePrivateKey) *device.NoisePublicKey {
	var pk device.NoisePublicKey

	apk := (*[device.NoisePublicKeySize]byte)(&pk)
	ask := (*[device.NoisePrivateKeySize]byte)(sk)
	curve25519.ScalarBaseMult(apk, ask)

	return &pk
}

func createTunnel(
	ctx context.Context,
	c *K8sClient,
	name string,
	skey *device.NoisePrivateKey,
	spub *device.NoisePublicKey,
	ckey *device.NoisePrivateKey,
	cpub *device.NoisePublicKey,
	pkey *device.NoisePrivateKey,
	agcfg *apiv1.AdGuardHomeConfig,
) (*glmv1.Tunnel, error) {
	ns, err := c.EnsureNS(ctx, name)
	if err != nil {
		return nil, err
	}

	// upsert secret
	secret, err := c.UpsertSecret(ctx, name, ns.Name, map[string][]byte{
		// server keys
		secretKeyServerPrivateKey: []byte(base64.StdEncoding.EncodeToString(skey[:])),
		secretKeyServerPublicKey:  []byte(base64.StdEncoding.EncodeToString(spub[:])),
		// client keys
		// TODO: support multiple peers
		secretKeyNameClientPrivateKey(0): []byte(base64.StdEncoding.EncodeToString(ckey[:])),
		secretKeyNameClientPublicKey(0):  []byte(base64.StdEncoding.EncodeToString(cpub[:])),
		secretKeyNamePresharedKey(0):     []byte(base64.StdEncoding.EncodeToString(pkey[:])),
	})
	if err != nil {
		return nil, err
	}

	// upsert tunnel
	tun := &glmv1.Tunnel{
		ObjectMeta: metav1.ObjectMeta{
			Name:      name,
			Namespace: ns.Name,
		},
	}
	tunFn := func() error {
		tun.Annotations = annotateWithRequestID(ctx, tun)
		tun.Annotations = controller.MergeLabels(tun.Annotations, annotateTunnelSecretVersion(secret))
		tun.Spec = glmv1.TunnelSpec{
			Protocol: glmv1.TunnelProtocol{
				WireGuard: &glmv1.WireGuardSpec{
					Interface: glmv1.WireGuardInterface{
						PrivateKey: glmv1.ValueOrValueFrom{
							ValueFrom: &glmv1.ValueFromSource{
								SecretKeyRef: &corev1.SecretKeySelector{
									LocalObjectReference: corev1.LocalObjectReference{
										Name: secret.Name,
									},
									Key: secretKeyServerPrivateKey,
								},
							},
						},
						ListenPort:  ConfigServerListenPort,
						IngressPort: 0,
						Address:     []string{configServerAddress},
						PostUp:      configServerPostUp,
						PostDown:    configServerPostDown,
					},
					Peers: []glmv1.WireGuardPeer{
						{
							AllowedIPs: allowClientIPs(),
							PublicKey: glmv1.ValueOrValueFrom{
								ValueFrom: &glmv1.ValueFromSource{
									SecretKeyRef: &corev1.SecretKeySelector{
										LocalObjectReference: corev1.LocalObjectReference{
											Name: secret.Name,
										},
										Key: secretKeyNameClientPublicKey(0),
									},
								},
							},
							PresharedKey: glmv1.ValueOrValueFrom{
								ValueFrom: &glmv1.ValueFromSource{
									SecretKeyRef: &corev1.SecretKeySelector{
										LocalObjectReference: corev1.LocalObjectReference{
											Name: secret.Name,
										},
										Key: secretKeyNamePresharedKey(0),
									},
								},
							},
						},
					},
				},
			},
			DNS: glmv1.TunnelDNS{
				AdGuardHome: &glmv1.AdGuardHomeSpec{
					FilteringEnabled: agcfg.FilteringEnabled,
					BlockLists:       convertBlockLists(agcfg.BlockLists),
				},
			},
			// disable boringtun
			// getting error "Unable to access interface: Protocol error on Amazon Linux
			// UserspaceImpl: "boringtun-cli",
		}

		return nil
	}
	if _, err := controllerutil.CreateOrUpdate(ctx, c, tun, tunFn); err != nil {
		return nil, err
	}

	return tun, nil
}

func secretKeyNameClientPrivateKey(i int) string {
	return fmt.Sprintf("%s-%d", secretKeyClientPrivateKey, i)
}

func secretKeyNameClientPublicKey(i int) string {
	return fmt.Sprintf("%s-%d", secretKeyClientPublicKey, i)
}

func secretKeyNamePresharedKey(i int) string {
	return fmt.Sprintf("%s-%d", secretKeyPresharedKey, i)
}

func annotateTunnelSecretVersion(secret *corev1.Secret) map[string]string {
	return map[string]string{
		annonationTunnelSecretVersion: secret.ResourceVersion,
	}
}

// allowServerIPs allows IPs from all clients to the tunnel
// TODO: consider trimming this down. On Linux, split tunnels
// with `nmcli` do not appear to work
func allowServerIPs() []string {
	return []string{"0.0.0.0/0", "::/0"}
}

func allowClientIPs() []string {
	return []string{configClientAddress}
}

func newHTTPClient() *http.Client {
	return &http.Client{
		Timeout: 5 * time.Second,
	}
}

func convertBlockLists(blockLists []*apiv1.AdGuardHomeConfig_BlockList) []glmv1.AdGuardHomeBlockList {
	var bls []glmv1.AdGuardHomeBlockList
	for _, bl := range blockLists {
		bls = append(bls, glmv1.AdGuardHomeBlockList{
			Name: bl.Name,
			URL:  bl.Url,
		})
	}

	return bls
}

func annotateWithRequestID(ctx context.Context, tun *glmv1.Tunnel) map[string]string {
	return controller.MergeLabels(tun.Annotations, map[string]string{annotationRequestID: middleware.GetReqID(ctx)})
}
