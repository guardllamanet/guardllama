package api

import (
	"bytes"
	"strings"
	"text/template"

	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
)

var (
	tunnelConfigTmpl = template.Must(
		template.New("").
			Funcs(template.FuncMap{
				"StringJoin": strings.Join,
			}).
			Parse(`[Interface]
{{- if .Interface }}
PrivateKey = {{ .Interface.PrivateKey }}
Address = {{ StringJoin .Interface.Address ", " }}
{{- if .Interface.Dns }}
DNS = {{ StringJoin .Interface.Dns ", " }}
{{- end }}
{{- end }}
{{- range .Peers }}
{{- "\n" }}
[Peer]
PublicKey = {{ .PublicKey }}
{{- if .PresharedKey }}{{ "\n" }}PresharedKey = {{ .PresharedKey }}{{ end }}
AllowedIPs = {{ StringJoin .AllowedIps ", " }}
{{- if .Endpoint }}{{ "\n" }}Endpoint = {{ .Endpoint }}{{ end }}
{{- end }}`))
)

func wgConfig(tc *apiv1.WireGuardConfig) (string, error) {
	wgQuickBytes := bytes.NewBuffer(nil)
	if err := tunnelConfigTmpl.Execute(
		wgQuickBytes,
		tc,
	); err != nil {
		return "", err
	}

	return wgQuickBytes.String(), nil
}
