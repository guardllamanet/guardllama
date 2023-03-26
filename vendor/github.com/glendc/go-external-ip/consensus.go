package externalip

import (
	"log"
	"net"
	"sync"
	"time"
)

// DefaultConsensusConfig returns the ConsensusConfig,
// with the default values:
//    + Timeout: 30 seconds;
func DefaultConsensusConfig() *ConsensusConfig {
	return &ConsensusConfig{
		Timeout: time.Second * 30,
	}
}

// DefaultConsensus returns a consensus filled
// with default and recommended HTTPSources.
// TLS-Protected providers get more power,
// compared to plain-text providers.
func DefaultConsensus(cfg *ConsensusConfig, logger *log.Logger) *Consensus {
	consensus := NewConsensus(cfg, logger)

	// TLS-protected providers
	consensus.AddVoter(NewHTTPSource("https://icanhazip.com/"), 3)
	consensus.AddVoter(NewHTTPSource("https://myexternalip.com/raw"), 3)

	// Plain-text providers
	consensus.AddVoter(NewHTTPSource("http://ifconfig.io/ip"), 1)
	consensus.AddVoter(NewHTTPSource("http://checkip.amazonaws.com/"), 1)
	consensus.AddVoter(NewHTTPSource("http://ident.me/"), 1)
	consensus.AddVoter(NewHTTPSource("http://whatismyip.akamai.com/"), 1)
	consensus.AddVoter(NewHTTPSource("http://myip.dnsomatic.com/"), 1)
	consensus.AddVoter(NewHTTPSource("http://diagnostic.opendns.com/myip"), 1)

	return consensus
}

// NewConsensus creates a new Consensus, with no sources.
// When the given cfg is <nil>, the `DefaultConsensusConfig` will be used.
func NewConsensus(cfg *ConsensusConfig, logger *log.Logger) *Consensus {
	if cfg == nil {
		cfg = DefaultConsensusConfig()
	}
	if logger == nil {
		logger = NewLogger(nil)
	}
	return &Consensus{
		timeout: cfg.Timeout,
		logger:  logger,
	}
}

// ConsensusConfig is used to configure the Consensus, while creating it.
type ConsensusConfig struct {
	Timeout time.Duration
}

// WithTimeout sets the voting timeout of this config,
// returning the config itself at the end, to allow for chaining
func (cfg *ConsensusConfig) WithTimeout(timeout time.Duration) *ConsensusConfig {
	cfg.Timeout = timeout
	return cfg
}

// Consensus the type at the center of this library,
// and is the main entry point for users.
// Its `ExternalIP` method allows you to ask for your ExternalIP,
// influenced by all its added voters.
type Consensus struct {
	voters   []voter
	timeout  time.Duration
	logger   *log.Logger
	protocol uint
}

// AddVoter adds a voter to this consensus.
// The source cannot be <nil> and
// the weight has to be of a value of 1 or above.
func (c *Consensus) AddVoter(source Source, weight uint) error {
	if source == nil {
		c.logger.Println("[ERROR] could not add voter: no source given")
		return ErrNoSource
	}
	if weight == 0 {
		c.logger.Println("[ERROR] could not add voter: weight cannot be 0")
		return ErrInsufficientWeight
	}

	c.voters = append(c.voters, voter{
		source: source,
		weight: weight,
	})
	return nil
}

// ExternalIP requests asynchronously the externalIP from all added voters,
// returning the IP which received the most votes.
// The returned IP will always be valid, in case the returned error is <nil>.
func (c *Consensus) ExternalIP() (net.IP, error) {
	voteCollection := make(map[string]uint)
	var vlock sync.Mutex
	var wg sync.WaitGroup

	// start all source Requests on a seperate goroutine
	for _, v := range c.voters {
		wg.Add(1)
		go func(v voter) {
			defer wg.Done()
			ip, err := v.source.IP(c.timeout, c.logger, c.protocol)
			if err == nil && ip != nil {
				vlock.Lock()
				defer vlock.Unlock()
				voteCollection[ip.String()] += v.weight
			}
		}(v)
	}

	// wait for all votes to come in,
	// or until their process times out
	wg.Wait()

	// if no votes were casted succesfully,
	// return early with an error
	if len(voteCollection) == 0 {
		c.logger.Println("[ERROR] no votes were casted succesfully")
		return nil, ErrNoIP
	}

	var max uint
	var externalIP string

	// find the IP which has received the most votes,
	// influinced by the voter's weight.
	vlock.Lock()
	defer vlock.Unlock()
	for ip, votes := range voteCollection {
		if votes > max {
			max, externalIP = votes, ip
		}
	}

	// as the found IP was parsed previously,
	// we know it cannot be nil and is valid
	return net.ParseIP(externalIP), nil
}

// UseIPProtocol will set the IP Protocol to use for http requests
// to the sources. If zero, it will not discriminate. This is useful
// when you want to get the external IP in a specific protocol.
// Protocol only supports 0, 4 or 6.
func (c *Consensus) UseIPProtocol(protocol uint) error {
	if protocol != 0 && protocol != 4 && protocol != 6 {
		c.logger.Println("[ERROR] only ipv4 and ipv6 protocol is supported")
		return ErrInvalidProtocol
	}
	c.protocol = protocol
	return nil
}
