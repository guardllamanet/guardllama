package externalip

import (
	"errors"
	"io/ioutil"
	"log"
	"net"
	"net/http"
	"strings"
	"syscall"
	"time"
)

// NewHTTPSource creates a HTTP Source object,
// which can be used to request the (external) IP from.
// The Default HTTP Client will be used if no client is given.
func NewHTTPSource(url string) *HTTPSource {
	return &HTTPSource{
		url: url,
	}
}

// HTTPSource is the default source, to get the external IP from.
// It does so by requesting the IP from a URL, via an HTTP GET Request.
type HTTPSource struct {
	url    string
	parser ContentParser
}

// ContentParser can be used to add a parser to an HTTPSource
// to parse the raw content returned from a website, and return the IP.
// Spacing before and after the IP will be trimmed by the Consensus.
type ContentParser func(string) (string, error)

// WithParser sets the parser value as the value to be used by this HTTPSource,
// and returns the pointer to this source, to allow for chaining.
func (s *HTTPSource) WithParser(parser ContentParser) *HTTPSource {
	s.parser = parser
	return s
}

// IP implements Source.IP
func (s *HTTPSource) IP(timeout time.Duration, logger *log.Logger, protocol uint) (net.IP, error) {
	// Define the GET method with the correct url,
	// setting the User-Agent to our library
	req, err := http.NewRequest("GET", s.url, nil)
	if err != nil {
		logger.Printf("[ERROR] could not create a GET Request for %q: %v\n", s.url, err)
		return nil, err
	}
	req.Header.Set("User-Agent", "go-external-ip (github.com/glendc/go-external-ip)")

	// transport to avoid goroutine leak
	tr := &http.Transport{
		MaxIdleConns:      1,
		IdleConnTimeout:   3 * time.Second,
		DisableKeepAlives: true,
		DialContext: (&net.Dialer{
			Timeout:   30 * time.Second,
			KeepAlive: 30 * time.Second,
			DualStack: false,
			Control: func(network, address string, c syscall.RawConn) error {
				if protocol == 4 && network == "tcp6" {
					return errors.New("rejecting ipv6 connection")
				} else if protocol == 6 && network == "tcp4" {
					return errors.New("rejecting ipv4 connection")
				}
				return nil
			},
		}).DialContext,
	}

	client := &http.Client{Timeout: timeout, Transport: tr}

	// Do the request and read the body for non-error results.
	resp, err := client.Do(req)
	if err != nil {
		logger.Printf("[ERROR] could not GET %q: %v\n", s.url, err)
		return nil, err
	}
	defer resp.Body.Close()

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		logger.Printf("[ERROR] could not read response from %q: %v\n", s.url, err)
		return nil, err
	}

	// optionally parse the content
	raw := string(bytes)
	if s.parser != nil {
		raw, err = s.parser(raw)
		if err != nil {
			logger.Printf("[ERROR] could not parse response from %q: %v\n", s.url, err)
			return nil, err
		}
	}

	// validate the IP
	externalIP := net.ParseIP(strings.TrimSpace(raw))
	if externalIP == nil {
		logger.Printf("[ERROR] %q returned an invalid IP: %v\n", s.url, err)
		return nil, InvalidIPError(raw)
	}

	// returned the parsed IP
	return externalIP, nil
}
