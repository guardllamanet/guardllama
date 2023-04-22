package e2etest

import (
	"context"
	"crypto/rand"
	"encoding/base64"
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/google/go-cmp/cmp"
	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	"github.com/guardllamanet/guardllama/internal/e2etest/testutil"
	"github.com/rs/xid"
	"golang.org/x/crypto/curve25519"
	"golang.zx2c4.com/wireguard/device"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/types"
)

func Test_Tunnel(t *testing.T) {
	c := testutil.NewClient(t)
	defer c.Cleanup(t)

	var (
		ctx      = context.Background()
		ns       = c.CreateNS(t, ctx)
		tunName  = xid.New().String()
		tunName2 = xid.New().String()

		skey, ckey, pkey device.NoisePrivateKey
	)

	if _, err := rand.Read(skey[:]); err != nil {
		t.Fatal(err)
	}
	if _, err := rand.Read(ckey[:]); err != nil {
		t.Fatal(err)
	}
	if _, err := rand.Read(pkey[:]); err != nil {
		t.Fatal(err)
	}
	spub, cpub := publicKey(&skey), publicKey(&ckey)

	steps := []testutil.Step{
		{
			Name: "create a tunnel",
			Step: func(t *testing.T) {
				secret := &corev1.Secret{
					ObjectMeta: metav1.ObjectMeta{
						Name:      tunName,
						Namespace: ns.Name,
					},
					StringData: map[string]string{
						"serverPrivateKey": base64.StdEncoding.EncodeToString(skey[:]),
						"clientPublicKey":  base64.StdEncoding.EncodeToString(cpub[:]),
						"presharedKey":     base64.StdEncoding.EncodeToString(pkey[:]),
					},
				}
				if err := c.Create(ctx, secret); err != nil {
					t.Fatal(err)
				}

				tun := &glmv1.Tunnel{
					ObjectMeta: metav1.ObjectMeta{
						Name:      tunName,
						Namespace: ns.Name,
					},
					Spec: glmv1.TunnelSpec{
						DNS: glmv1.TunnelDNS{
							AdGuardHome: &glmv1.AdGuardHomeSpec{},
						},
						Protocol: glmv1.TunnelProtocol{
							WireGuard: &glmv1.WireGuardSpec{
								Interface: glmv1.WireGuardInterface{
									PrivateKey: glmv1.ValueOrValueFrom{
										ValueFrom: &glmv1.ValueFromSource{
											SecretKeyRef: &corev1.SecretKeySelector{
												LocalObjectReference: corev1.LocalObjectReference{
													Name: secret.Name,
												},
												Key: "serverPrivateKey",
											},
										},
									},
									ListenPort: 51820,
									Address:    []string{"10.6.0.1/32"},
									PostUp:     "iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -I POSTROUTING 1 -s 10.6.0.2/32 -o eth+ -j MASQUERADE",
									PostDown:   "iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING 1 -s 10.6.0.2/32 -o eth+ -j MASQUERADE",
								},
								Peers: []glmv1.WireGuardPeer{
									{
										AllowedIPs: []string{"10.6.0.2/32"},
										PresharedKey: glmv1.ValueOrValueFrom{
											ValueFrom: &glmv1.ValueFromSource{
												SecretKeyRef: &corev1.SecretKeySelector{
													LocalObjectReference: corev1.LocalObjectReference{
														Name: secret.Name,
													},
													Key: "presharedKey",
												},
											},
										},
										PublicKey: glmv1.ValueOrValueFrom{
											ValueFrom: &glmv1.ValueFromSource{
												SecretKeyRef: &corev1.SecretKeySelector{
													LocalObjectReference: corev1.LocalObjectReference{
														Name: secret.Name,
													},
													Key: "clientPublicKey",
												},
											},
										},
									},
								},
							},
						},
					},
				}

				if err := c.Create(ctx, tun); err != nil {
					t.Fatal(err)
				}
			},
		},
		{
			Name: "get a tunnel",
			Step: func(t *testing.T) {
				testutil.PollUntil(t, time.Second, 60*time.Second, func() error {
					var tun glmv1.Tunnel
					if err := c.Get(ctx, types.NamespacedName{Namespace: ns.Name, Name: tunName}, &tun); err != nil {
						return err
					}

					cond := tun.Status.GetCondition(glmv1.ConditionTunnelReady)
					if cond.IsUnknown() {
						return fmt.Errorf("Tunnel status is not ready: %v", tun.Status)
					}

					if cond.IsFalse() {
						t.Fatalf("Tunnel condition should not be false when starting: %v", tun.Status)
					}

					if dns := tun.Status.DNS; len(dns) == 0 {
						return fmt.Errorf("Tunnel dns is not assigned")
					}

					return nil
				})
			},
		},
		{
			Name: "validate wg connection",
			Step: func(t *testing.T) {
				var tun glmv1.Tunnel
				if err := c.Get(ctx, types.NamespacedName{Namespace: ns.Name, Name: tunName}, &tun); err != nil {
					t.Fatal(err)
				}

				conf := fmt.Sprintf(`[Interface]
PrivateKey = %s
Address = 10.6.0.2/32
DNS = %s
[Peer]
PublicKey = %s
PresharedKey = %s
AllowedIPs = 0.0.0.0/0
Endpoint = %s`,
					base64.StdEncoding.EncodeToString(ckey[:]),
					strings.Join(tun.Status.DNS, ","),
					base64.StdEncoding.EncodeToString(spub[:]),
					base64.StdEncoding.EncodeToString(pkey[:]),
					// This is internal addr. We will use node_ip:node_port in prod
					fmt.Sprintf("%s.%s:%d", tun.WireGuardServiceName(), tun.Namespace, tun.Spec.Protocol.WireGuard.Interface.ListenPort),
				)

				testutil.RunWGConnTest(t, c, tunName, ns.Name, flagWgTestImage, conf, "https://ipinfo.io")
			},
		},
		{
			Name: "create a new tunnel with the same ingress port",
			Step: func(t *testing.T) {
				var existingTun glmv1.Tunnel
				if err := c.Get(ctx, types.NamespacedName{Namespace: ns.Name, Name: tunName}, &existingTun); err != nil {
					t.Fatal(err)
				}

				spec := existingTun.Spec
				spec.Protocol.WireGuard.Interface.IngressPort = existingTun.Status.IngressPort

				tun := &glmv1.Tunnel{
					ObjectMeta: metav1.ObjectMeta{
						Name:      tunName2,
						Namespace: ns.Name,
					},
					Spec: spec,
				}
				if err := c.Create(ctx, tun); err != nil {
					t.Fatal(err)
				}
			},
		},
		{
			Name: "tunnel has a failed condition of service ready",
			Step: func(t *testing.T) {
				testutil.PollUntil(t, time.Second, 10*time.Second, func() error {
					var tun glmv1.Tunnel
					if err := c.Get(ctx, types.NamespacedName{Namespace: ns.Name, Name: tunName2}, &tun); err != nil {
						return err
					}

					cond := tun.Status.GetCondition(glmv1.ConditionTunnelReady)
					if cond == nil || !cond.IsFalse() {
						return fmt.Errorf("Tunnel ready status should be false: %v", tun.Status)
					}

					cond = tun.Status.GetCondition(glmv1.ConditionTunnelServiceReady)
					if cond == nil || !cond.IsFalse() {
						return fmt.Errorf("Tunnel service ready status should be false: %v", tun.Status)
					}
					if diff := cmp.Diff("ServiceError", cond.Reason); diff != "" {
						return fmt.Errorf("Mismatch of service ready status reason (-want +got): %s", diff)
					}

					return nil
				})
			},
		},
	}

	testutil.RunSteps(t, steps)
}

func publicKey(sk *device.NoisePrivateKey) (pk device.NoisePublicKey) {
	apk := (*[device.NoisePublicKeySize]byte)(&pk)
	ask := (*[device.NoisePrivateKeySize]byte)(sk)
	curve25519.ScalarBaseMult(apk, ask)
	return
}
