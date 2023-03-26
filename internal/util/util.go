package util

import (
	"net"
	"time"

	externalip "github.com/glendc/go-external-ip"
)

// MachineIP returns the external ip if it's available,
// otherwise falls back to local ip.
func MachineIP() string {
	eip := externalip.DefaultConsensus(
		&externalip.ConsensusConfig{
			Timeout: 5 * time.Second,
		},
		nil,
	)

	externalIP, err := eip.ExternalIP()
	if err != nil {
		localIP, err := outboundIP()
		if err != nil {
			return "127.0.0.1"
		}

		return localIP.String()
	}

	return externalIP.String()
}

func outboundIP() (net.IP, error) {
	conn, err := net.Dial("udp", "8.8.8.8:80")
	if err != nil {
		return nil, err
	}
	defer conn.Close()

	localAddr := conn.LocalAddr().(*net.UDPAddr)

	return localAddr.IP, nil
}
