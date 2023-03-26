package externalip

import "errors"

// InvalidIPError is returned when an value returned is invalid.
// This error should be returned by the source itself.
type InvalidIPError string

// Error implements error.Error
func (err InvalidIPError) Error() string {
	return "Invalid IP: " + string(err)
}

var (
	// ErrNoIP is returned by the Consensus when no vote was casted successfully
	ErrNoIP = errors.New("no IP could be found")
	// ErrInsufficientWeight is returned when a voter's weight is invalid
	ErrInsufficientWeight = errors.New("a voter's weight has to be at least 1")
	// ErrNoSource is returned when a voter is added,
	// which doesn't have a source specified
	ErrNoSource = errors.New("no voter's source given")
	// ErrInvalidProtocol is used when setting an invalid ip protocol on the conensus
	ErrInvalidProtocol = errors.New("invalid ip protocol specified")
)
