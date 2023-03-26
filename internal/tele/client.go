package tele

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"runtime"

	"github.com/guardllamanet/guardllama/internal/build"
	"go4.org/types"
)

var (
	TeleServerUsername = "username"
	TeleServerPassword = "password"
)

type Event struct {
	TraceID   string
	MachineID string

	Type    string
	Name    string
	Details map[string]any

	StartTime types.Time3339
	EndTime   types.Time3339
	Err       string

	Version string

	GOOS   string
	GOARCH string
}

type Client interface {
	SendEvent(e *Event) error
}

func NewClient(opts *ClientOptions) Client {
	return newClient(opts)
}

type ClientOptions struct {
	Client *http.Client
	URL    string
}

func NewTeleClient(opts *ClientOptions) Client {
	c := &client{
		client: http.DefaultClient,
		url:    "https://tele.guardllama.net",
	}

	if opts != nil {
		if opts.Client != nil {
			c.client = opts.Client
		}

		if opts.URL != "" {
			c.url = opts.URL
		}
	}

	return c
}

type client struct {
	client *http.Client
	url    string
}

func (c *client) SendEvent(e *Event) error {
	b, err := json.Marshal(e)
	if err != nil {
		return err
	}

	req, err := http.NewRequest("POST", c.url, bytes.NewReader(b))
	if err != nil {
		return err
	}

	req.SetBasicAuth(TeleServerUsername, TeleServerPassword)
	req.Header.Add("User-Agent", userAgent())

	resp, err := c.client.Do(req)
	if err != nil {
		return err
	}

	if resp.StatusCode >= 300 {
		body, err := io.ReadAll(resp.Body)
		if err != nil {
			return err
		}

		return fmt.Errorf("Error sending event: status=%d body=%q", resp.StatusCode, body)
	}

	return nil
}

func userAgent() string {
	return fmt.Sprintf("GuardLlama/%s %s/%s", build.Version, runtime.GOOS, runtime.GOARCH)
}
