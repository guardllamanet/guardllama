package externalip

import (
	"log"
	"net"
	"time"
)

// Source defines the part of a voter which gives the actual voting value (IP).
type Source interface {
	// IP returns IPv4/IPv6 address in a non-error case
	// net.IP should never be <nil> when error is <nil>
	// It is recommended that the IP function times out,
	// if no result could be found, after the given timeout duration.
	IP(timeout time.Duration, logger *log.Logger, protocol uint) (net.IP, error)
}

// voter adds weight to the IP given by a source.
// The weight has to be at least 1, and the more it is, the more power the voter has.
type voter struct {
	source Source // provides the IP (see: vote)
	weight uint   // provides the weight of its vote (acts as a multiplier)
}
