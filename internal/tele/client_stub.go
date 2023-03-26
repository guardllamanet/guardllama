//go:build !tele

package tele

func newClient(opts *ClientOptions) stubbedClient {
	return stubbedClient{}
}

type stubbedClient struct {
}

func (s stubbedClient) SendEvent(e *Event) error {
	return nil
}
