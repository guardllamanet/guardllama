package wg

import (
	"bytes"
	"encoding"
	"encoding/base64"
	"fmt"
	"net"
	"os"
	"os/exec"
	"text/template"
	"time"

	"github.com/guardllamanet/guardllama/internal/log"
	"golang.zx2c4.com/wireguard/wgctrl/wgtypes"
)

const wgtypeTmpl = `[Interface]
{{- range .Address }}
Address = {{ . }}
{{- end }}
{{- range .DNS }}
DNS = {{ . }}
{{- end }}
PrivateKey = {{ .PrivateKey | wgKey }}
{{- if .ListenPort }}{{ "\n" }}ListenPort = {{ .ListenPort }}{{ end }}
{{- if .MTU }}{{ "\n" }}MTU = {{ .MTU }}{{ end }}
{{- if .Table }}{{ "\n" }}Table = {{ .Table }}{{ end }}
{{- if .PreUp }}{{ "\n" }}PreUp = {{ .PreUp }}{{ end }}
{{- if .PostUp }}{{ "\n" }}PostUp = {{ .PostUp }}{{ end }}
{{- if .PreDown }}{{ "\n" }}PreDown = {{ .PreDown }}{{ end }}
{{- if .PostDown }}{{ "\n" }}PostDown = {{ .PostDown }}{{ end }}
{{- range .Peers }}
{{- "\n" }}
[Peer]
PublicKey = {{ .PublicKey | wgKey }}
AllowedIPs = {{ range $i, $el := .AllowedIPs }}{{if $i}}, {{ end }}{{ $el }}{{ end }}
{{- if .PresharedKey }}{{ "\n" }}PresharedKey = {{ .PresharedKey }}{{ end }}
{{- if .PersistentKeepaliveInterval }}{{ "\n" }}PersistentKeepalive = {{ .PersistentKeepaliveInterval | toSec }}{{ end }}
{{- if .Endpoint }}{{ "\n" }}Endpoint = {{ .Endpoint }}{{ end }}
{{- end }}
`

var (
	_ encoding.TextMarshaler = (*WgConfig)(nil)

	funcMap = template.FuncMap(map[string]interface{}{
		"wgKey": serializeKey,
		"toSec": toSec,
	})

	cfgTemplate = template.Must(
		template.
			New("wg-cfg").
			Funcs(funcMap).
			Parse(wgtypeTmpl))
)

type WgConfig struct {
	wgtypes.Config

	// Interface name
	Iface string
	// Address may be specified one or more times and contains one or more IP addresses (with an optional CIDR mask) to be set for the interface.
	Address []net.IPNet
	// DNS is a optional list of DNS servers to use while the device is up.
	DNS []net.IP
	// MTU is an optional MTU for the interface; if unspecified, auto-calculated.
	MTU int
	// Table is an optional routing table to which routes will be added; if unspecified, the default table is used.
	Table int
	// PreUp, PostUp, PreDown, PostDown: script snippets which will be executed by bash(1) at the corresponding phases of the link, most commonly used to configure DNS. The string `%i' is expanded to INTERFACE.
	PreUp    string
	PostUp   string
	PreDown  string
	PostDown string
}

func (cfg *WgConfig) String() string {
	b, err := cfg.MarshalText()
	if err != nil {
		panic(err)
	}
	return string(b)
}

func (cfg *WgConfig) MarshalText() (text []byte, err error) {
	buff := &bytes.Buffer{}
	if err := cfgTemplate.Execute(buff, cfg); err != nil {
		return nil, err
	}
	return buff.Bytes(), nil
}

func serializeKey(key *wgtypes.Key) string {
	return base64.StdEncoding.EncodeToString(key[:])
}

func toSec(duration time.Duration) int {
	return int(duration / time.Second)
}

type WgManager interface {
	Up(cfg WgConfig) error
	Sync(cfg WgConfig) error
}

func NewWgQuick(logger *log.Logger) WgManager {
	return &wgQuick{
		Logger: logger,
	}
}

type wgQuick struct {
	Logger *log.Logger
}

func (wg *wgQuick) Up(cfg WgConfig) error {
	b, err := cfg.MarshalText()
	if err != nil {
		return err
	}
	wg.Logger.Debug("wg config", "config", string(b))

	if err := os.MkdirAll("/etc/wireguard", 0755); err != nil {
		return err
	}

	if err := os.WriteFile(fmt.Sprintf("/etc/wireguard/%s.conf", cfg.Iface), b, 0600); err != nil {
		return err
	}

	return wg.exec("wg-quick", "up", cfg.Iface)
}

func (wg *wgQuick) Sync(cfg WgConfig) error {
	return fmt.Errorf("wg-quick does not support syncing config yet")
}

func (wg *wgQuick) exec(name string, arg ...string) error {
	cmd := exec.Command(name, arg...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	wg.Logger.Info("Execing command", "command", cmd.String())
	return cmd.Run()
}
