package wg

import (
	"encoding/base64"
	"fmt"
	"net"

	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"golang.zx2c4.com/wireguard/wgctrl/wgtypes"
	"sigs.k8s.io/yaml"
)

func readWgConfig(b []byte) (*WgConfig, error) {
	var (
		wgc apiv1.WireGuardConfig
		err error
	)

	if err := yaml.Unmarshal(b, &wgc); err != nil {
		return nil, err
	}
	if err := wgc.ValidateAll(); err != nil {
		return nil, err
	}

	cfg := &WgConfig{
		Iface: wireGuardDevName,
	}

	// address
	cfg.Address, err = parseCIDRs(wgc.Interface.Address)
	if err != nil {
		return nil, err
	}

	// dns
	cfg.DNS, err = parseIPs(wgc.Interface.Dns)
	if err != nil {
		return nil, err
	}

	// private key
	cfg.PrivateKey, err = parseKey(wgc.Interface.PrivateKey)
	if err != nil {
		return nil, err
	}

	// listen port
	lp := int(wgc.Interface.ListenPort)
	cfg.ListenPort = &lp

	// firewall mark
	if wgc.Interface.FirewallMark != 0 {
		fw := int(wgc.Interface.FirewallMark)
		cfg.FirewallMark = &fw
	}
	// mtu
	cfg.MTU = int(wgc.Interface.Mtu)

	// table
	cfg.Table = int(wgc.Interface.Table)

	// hooks
	cfg.PreUp = wgc.Interface.PreUp
	cfg.PostUp = wgc.Interface.PostUp
	cfg.PreDown = wgc.Interface.PreDown
	cfg.PostDown = wgc.Interface.PostDown

	// peers
	cfg.Peers, err = convertPeers(wgc.Peers)
	if err != nil {
		return nil, err
	}
	cfg.ReplacePeers = true

	return cfg, nil
}

func convertPeers(peers []*apiv1.WireGuardPeer) ([]wgtypes.PeerConfig, error) {
	var result []wgtypes.PeerConfig

	for _, p := range peers {
		pc := wgtypes.PeerConfig{}

		// public key
		pk, err := parseKey(p.PublicKey)
		if err != nil {
			return nil, err
		}
		pc.PublicKey = *pk

		// preshared key
		if p.PresharedKey != "" {
			psk, err := parseKey(p.PresharedKey)
			if err != nil {
				return nil, err
			}
			pc.PresharedKey = psk
		}

		// endpoint
		if p.Endpoint != "" {
			end, err := parseUDPAddr(p.Endpoint)
			if err != nil {
				return nil, err
			}
			pc.Endpoint = end
		}

		// persistent keepalive
		if p.PersistentKeepaliveInterval != nil {
			dur := p.PersistentKeepaliveInterval.AsDuration()
			pc.PersistentKeepaliveInterval = &dur
		}

		// allow ips
		pc.AllowedIPs, err = parseCIDRs(p.AllowedIps)
		if err != nil {
			return nil, err
		}

		result = append(result, pc)
	}

	return result, nil
}

func parseIPs(addrs []string) ([]net.IP, error) {
	var result []net.IP

	for _, addr := range addrs {
		ip := net.ParseIP(addr)
		if ip == nil {
			return nil, fmt.Errorf("error parsing IP")
		}

		result = append(result, ip)
	}

	return result, nil
}

func parseCIDRs(addrs []string) ([]net.IPNet, error) {
	var result []net.IPNet

	for _, addr := range addrs {
		ip, cidr, err := net.ParseCIDR(addr)
		if err != nil {
			return nil, err
		}
		result = append(result, net.IPNet{IP: ip, Mask: cidr.Mask})
	}

	return result, nil
}

func parseKey(key string) (*wgtypes.Key, error) {
	var pkey wgtypes.Key
	pkeySlice, err := base64.StdEncoding.DecodeString(key)
	if err != nil {
		return nil, err
	}
	copy(pkey[:], pkeySlice[:])
	return &pkey, nil
}

func parseUDPAddr(addr string) (*net.UDPAddr, error) {
	return net.ResolveUDPAddr("", addr)
}
