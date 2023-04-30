package util

import (
	"context"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"strings"
	"time"

	externalip "github.com/glendc/go-external-ip"
	"github.com/guardllamanet/guardllama/internal/build"
	glog "github.com/guardllamanet/guardllama/internal/log"
)

// MachineIP returns the external ip if it's available,
// otherwise falls back to local ip.
func MachineIP() string {
	eip := newExternalIP()
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

func newExternalIP() *externalip.Consensus {
	eip := externalip.NewConsensus(
		&externalip.ConsensusConfig{
			Timeout: 5 * time.Second,
		},
		nil,
	)
	_ = eip.AddVoter(newIPV4HTTPSource("https://checkip.amazonaws.com/"), 1)
	_ = eip.AddVoter(newIPV4HTTPSource("https://myexternalip.com/raw"), 1)
	_ = eip.AddVoter(newIPV4HTTPSource("https://ipinfo.io/ip"), 1)
	_ = eip.AddVoter(newIPV4HTTPSource("http://whatismyip.akamai.com/"), 1)

	return eip
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

func newIPV4HTTPSource(url string) *ipv4HTTPSource {
	return &ipv4HTTPSource{
		url:    url,
		logger: glog.NewTextLogger(),
	}
}

type ipv4HTTPSource struct {
	url    string
	parser contentParser
	logger *glog.Logger
}

// contentParser can be used to add a parser to an HTTPSource
// to parse the raw content returned from a website, and return the IP.
// Spacing before and after the IP will be trimmed by the Consensus.
type contentParser func(string) (string, error)

// WithParser sets the parser value as the value to be used by this HTTPSource,
// and returns the pointer to this source, to allow for chaining.
func (s *ipv4HTTPSource) WithParser(parser contentParser) *ipv4HTTPSource {
	s.parser = parser
	return s
}

// IP implements Source.IP
func (s *ipv4HTTPSource) IP(timeout time.Duration, logger *log.Logger, protocol uint) (net.IP, error) {
	// Define the GET method with the correct url,
	// setting the User-Agent to our library
	req, err := http.NewRequest("GET", s.url, nil)
	if err != nil {
		s.logger.Debug("could not create a GET Request", "url", s.url, "error", err)
		return nil, err
	}
	req.Header.Set("User-Agent", fmt.Sprintf("GuardLlama %s", build.Version))

	var zeroDialer net.Dialer

	tr := http.DefaultTransport.(*http.Transport).Clone()
	tr.DialContext = func(ctx context.Context, network, addr string) (net.Conn, error) {
		// FIXME: force IPv4 when getting external IP because k8s ingress doesn't support ipv6 yet
		// This is a temporary fix until we can get a better solution.
		return zeroDialer.DialContext(ctx, "tcp4", addr)
	}
	client := &http.Client{Timeout: timeout, Transport: tr}

	// Do the request and read the body for non-error results.
	resp, err := client.Do(req)
	if err != nil {
		s.logger.Debug("could not GET", "url", s.url, "error", err)
		return nil, err
	}
	defer resp.Body.Close()

	bytes, err := io.ReadAll(resp.Body)
	if err != nil {
		s.logger.Debug("could not read response", "url", s.url, "error", err)
		return nil, err
	}

	// optionally parse the content
	raw := string(bytes)
	if s.parser != nil {
		raw, err = s.parser(raw)
		if err != nil {
			s.logger.Debug("could not parse response", "url", s.url, "error", err)
			return nil, err
		}
	}

	// validate the IP
	externalIP := net.ParseIP(strings.TrimSpace(raw))
	if externalIP == nil {
		s.logger.Debug("invalid IP", "url", s.url, "error", err)
		return nil, externalip.InvalidIPError(raw)
	}

	// returned the parsed IP
	return externalIP, nil
}
