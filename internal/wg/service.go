package wg

import (
	"context"
	"encoding/base64"
	"fmt"

	"github.com/guardllamanet/guardllama/internal/web/api"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"golang.zx2c4.com/wireguard/wgctrl/wgtypes"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
)

const (
	wireGuardDevName = "wg0"
)

type WireGuardService struct {
	apiv1.UnimplementedWireGuardServiceServer
	client WGClient
}

func (s *WireGuardService) GetWireGuardDevice(context.Context, *apiv1.GetWireGuardDeviceRequest) (*apiv1.GetWireGuardDeviceResponse, error) {
	dev, err := s.findDevice()
	if err != nil {
		return nil, api.StatusInternal(err)
	}

	return &apiv1.GetWireGuardDeviceResponse{Device: dev}, nil
}

func (s *WireGuardService) findDevice() (*apiv1.WireGuardDevice, error) {
	ds, err := s.client.Devices()
	if err != nil {
		return nil, err
	}
	var dev *wgtypes.Device
	for _, d := range ds {
		if d.Name == wireGuardDevName {
			dev = d
			break
		}
	}
	if dev == nil {
		return nil, fmt.Errorf("WireGuard device not found")
	}

	var peers []*apiv1.WireGuardDevicePeer
	for _, p := range dev.Peers {
		var lastHandshakeTime *timestamppb.Timestamp
		if !p.LastHandshakeTime.IsZero() {
			lastHandshakeTime = timestamppb.New(p.LastHandshakeTime)
		}

		var endpoint string
		if p.Endpoint != nil {
			endpoint = p.Endpoint.String()
		}

		var allowedIPs []string
		for _, aip := range p.AllowedIPs {
			allowedIPs = append(allowedIPs, aip.String())
		}

		peers = append(peers, &apiv1.WireGuardDevicePeer{
			PublicKey:                   base64.StdEncoding.EncodeToString(p.PublicKey[:]),
			PresharedKey:                base64.StdEncoding.EncodeToString(p.PresharedKey[:]),
			Endpoint:                    endpoint,
			PersistentKeepaliveInterval: durationpb.New(p.PersistentKeepaliveInterval),
			LastHandshakeTime:           lastHandshakeTime,
			ReceiveBytes:                p.ReceiveBytes,
			TransmitBytes:               p.TransmitBytes,
			AllowedIps:                  allowedIPs,
			ProtocolVersion:             int32(p.ProtocolVersion),
		})
	}

	return &apiv1.WireGuardDevice{
		Name:         dev.Name,
		Type:         apiv1.WireGuardDevice_DeviceType(dev.Type),
		PublicKey:    base64.StdEncoding.EncodeToString(dev.PublicKey[:]),
		ListenPort:   int32(dev.ListenPort),
		FirewallMark: int32(dev.FirewallMark),
		Peers:        peers,
	}, nil
}
