//go:build tele

package tele

func newClient(opts *ClientOptions) Client {
	return NewTeleClient(opts)
}
