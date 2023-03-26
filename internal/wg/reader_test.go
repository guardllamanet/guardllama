package wg

import (
	"testing"

	"github.com/google/go-cmp/cmp"
	"golang.zx2c4.com/wireguard/wgctrl/wgtypes"
)

func Test_readWgConfig(t *testing.T) {
	var (
		privateKey, _   = parseKey("4MRWFrP2rSSW6sk5isgXD+vDtUpQ2tWYoFyWepnK4Kc=")
		publicKey, _    = parseKey("5QDN1fPHj2ycnOg3ZVuyFYU06LQZFAfGNtUAJFOqsDU=")
		presharedKey, _ = parseKey("PFUN999T22ONrp3flMFdJCkyE9REZrsOoH1s1HKoed0=")
		end, _          = parseUDPAddr("52.42.94.111:31003")
		lp              = 8080
		addr, _         = parseCIDRs([]string{"10.6.0.2/32"})
		allowed, _      = parseCIDRs([]string{"0.0.0.0/0", "::/0"})
		dns, _          = parseIPs([]string{"10.43.64.224"})
	)
	validCfg := &WgConfig{
		Config: wgtypes.Config{
			PrivateKey:   privateKey,
			ListenPort:   &lp,
			ReplacePeers: true,
			Peers: []wgtypes.PeerConfig{
				{
					PublicKey:    *publicKey,
					PresharedKey: presharedKey,
					Endpoint:     end,
					AllowedIPs:   allowed,
				},
			},
		},
		Iface:   wireGuardDevName,
		Address: addr,
		DNS:     dns,
	}

	cases := []struct {
		Name       string
		Input      string
		WantConfig *WgConfig
		WantErrStr string
	}{
		{
			Name: "happy path",
			Input: `
interface:
  private_key: 4MRWFrP2rSSW6sk5isgXD+vDtUpQ2tWYoFyWepnK4Kc=
  listen_port: 8080
  ingress_port: 30000
  address:
  - 10.6.0.2/32
  dns:
  - 10.43.64.224
peers:
- public_key: 5QDN1fPHj2ycnOg3ZVuyFYU06LQZFAfGNtUAJFOqsDU=
  preshared_key: PFUN999T22ONrp3flMFdJCkyE9REZrsOoH1s1HKoed0=
  endpoint: 52.42.94.111:31003
  allowed_ips:
  - 0.0.0.0/0
  - "::/0"`,
			WantConfig: validCfg,
		},
		{
			Name:       "validate input",
			Input:      "{}",
			WantErrStr: "invalid WireGuardConfig.Interface: value is required",
		},
	}

	for _, c := range cases {
		c := c

		t.Run(c.Name, func(t *testing.T) {
			t.Parallel()

			cfg, err := readWgConfig([]byte(c.Input))

			var errStr string
			if err != nil {
				errStr = err.Error()
			}

			if diff := cmp.Diff(c.WantErrStr, errStr); diff != "" {
				t.Errorf("mismatch of error (-want +got): %s", diff)
			}

			if diff := cmp.Diff(c.WantConfig, cfg); diff != "" {
				t.Errorf("mismatch of config (-want +got): %s", diff)
			}
		})
	}
}
