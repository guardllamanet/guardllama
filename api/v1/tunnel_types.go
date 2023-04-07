package v1

import (
	"fmt"

	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

const (
	ConditionTunnelReady ConditionType = "Ready"

	ConditionTunnelConfigReady  ConditionType = "TunnelConfigReady"
	ConditionTunnelDeployReady  ConditionType = "TunnelDeployReady"
	ConditionTunnelPodReady     ConditionType = "TunnelPodReady"
	ConditionTunnelServiceReady ConditionType = "TunnelServiceReady"

	ConditionDNSInitConfigReady ConditionType = "DNSInitConfigReady"
	ConditionDNSConfigReady     ConditionType = "DNSConfigReady"
	ConditionDNSConfigPVCReady  ConditionType = "DNSConfigPVCReady"
	ConditionDNSDeployReady     ConditionType = "DNSDeployReady"
	ConditionDNSPodReady        ConditionType = "DNSPodReady"
	ConditionDNSServiceReady    ConditionType = "DNSServiceReady"
)

var (
	tunnelConditions = NewConditionSet(
		ConditionTunnelReady,

		ConditionTunnelConfigReady,
		ConditionTunnelDeployReady,
		ConditionTunnelServiceReady,
		ConditionTunnelPodReady,

		ConditionDNSInitConfigReady,
		ConditionDNSConfigReady,
		ConditionDNSConfigPVCReady,
		ConditionDNSDeployReady,
		ConditionDNSPodReady,
		ConditionDNSServiceReady,
	)
)

type TunnelSpec struct {
	Protocol TunnelProtocol `json:"protocol"`
	DNS      TunnelDNS      `json:"dns"`
}

type TunnelProtocol struct {
	WireGuard *WireGuardSpec `json:"wireGuard,omitempty"`
}

type TunnelDNS struct {
	AdGuardHome *AdGuardHomeSpec `json:"adGuardHome,omitempty"`
}

type WireGuardSpec struct {
	Interface     WireGuardInterface `json:"interface"`
	Peers         []WireGuardPeer    `json:"peers,omitempty"`
	UserspaceImpl string             `json:"userspaceImpl,omitempty"`
}

type WireGuardInterface struct {
	PrivateKey ValueOrValueFrom `json:"privateKey"`
	// +kubebuilder:validation:Minimum:=1
	// +kubebuilder:validation:Maximum:=65535
	ListenPort   int32    `json:"listenPort"`
	IngressPort  int32    `json:"ingressPort,omitempty"`
	FirewallMark int32    `json:"firewallMark,omitempty"`
	Address      []string `json:"address,omitempty"`
	MTU          int32    `json:"mtu,omitempty"`
	Table        int32    `json:"table,omitempty"`
	PreUp        string   `json:"preUp,omitempty"`
	PostUp       string   `json:"postUp,omitempty"`
	PreDown      string   `json:"preDown,omitempty"`
	PostDown     string   `json:"postDown,omitempty"`
}

type AdGuardHomeSpec struct {
	FilteringEnabled *bool                `json:"filteringEnabled,omitempty"`
	BlockLists       []TunnelDNSBlockList `json:"blockLists,omitempty"`
}

func (s AdGuardHomeSpec) IsFilteringEnabled() bool {
	return s.FilteringEnabled == nil || *s.FilteringEnabled
}

type TunnelDNSBlockList struct {
	Name string `json:"name"`
	URL  string `json:"url"`
}

type WireGuardPeer struct {
	PublicKey                          ValueOrValueFrom `json:"publicKey"`
	PresharedKey                       ValueOrValueFrom `json:"presharedKey,omitempty"`
	Endpoint                           string           `json:"endpoint,omitempty"`
	PersistentKeepaliveIntervalSeconds int32            `json:"persistentKeepaliveInterval,omitempty"`
	AllowedIPs                         []string         `json:"allowedIps,omitempty"`
}

type ValueOrValueFrom struct {
	Value     string           `json:"value,omitempty"`
	ValueFrom *ValueFromSource `json:"valueFrom,omitempty"`
}

type ValueFromSource struct {
	SecretKeyRef *corev1.SecretKeySelector `json:"secretKeyRef"`
}

// TunnelStatus defines the observed state of Tunnel
type TunnelStatus struct {
	IngressPort int32        `json:"ingressPort,omitempty"`
	DNS         []string     `json:"dns,omitempty"`
	Conditions  Conditions   `json:"conditions,omitempty"`
	UpdatedAt   *metav1.Time `json:"updatedAt,omitempty"`
}

func (s *TunnelStatus) SetCondition(ct ConditionType, status corev1.ConditionStatus, reason string, message string) {
	s.Conditions = tunnelConditions.SetCondition(s.Conditions, ct, status, reason, message)
}

func (s *TunnelStatus) GetCondition(ct ConditionType) *Condition {
	return tunnelConditions.GetCondition(s.Conditions, ct)
}

// +kubebuilder:object:root=true
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="Listen",type=integer,JSONPath=`.spec.protocol.wireGuard.interface.listenPort`
// +kubebuilder:printcolumn:name="Ingress",type=integer,JSONPath=`.status.ingressPort`
// +kubebuilder:printcolumn:name="DNS",type=string,JSONPath=`.status.dns`
// +kubebuilder:printcolumn:name="Ready",type=string,JSONPath=`.status.conditions[?(@.type == "Ready")].status`
// +kubebuilder:printcolumn:name="Update",type=string,format=date-time,JSONPath=`.status.updatedAt`

// Tunnel is the Schema for the tunnels API
type Tunnel struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   TunnelSpec   `json:"spec,omitempty"`
	Status TunnelStatus `json:"status,omitempty"`
}

func (t Tunnel) WireGuardTypedName() string {
	return fmt.Sprintf("wg-%s", t.Name)
}

func (t Tunnel) WireGuardServiceName() string {
	return t.WireGuardTypedName()
}

func (t Tunnel) WireGuardAdminServiceName() string {
	return fmt.Sprintf("%s-admin", t.WireGuardTypedName())
}

func (t Tunnel) WireGuardAdminServiceHost() string {
	return fmt.Sprintf("%s.%s", t.WireGuardAdminServiceName(), t.Namespace)
}

func (t Tunnel) AdGuardHomeTypedName() string {
	return fmt.Sprintf("agh-%s", t.Name)
}

func (t Tunnel) AdGuardHomeServiceName() string {
	return t.AdGuardHomeTypedName()
}

func (t Tunnel) AdGuardHomeConfigPVCName() string {
	return t.AdGuardHomeTypedName()
}

func (t Tunnel) AdGuardHomeServiceHost() string {
	return fmt.Sprintf("%s.%s", t.AdGuardHomeServiceName(), t.Namespace)
}

// +kubebuilder:object:root=true

// TunnelList contains a list of Tunnel
type TunnelList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []Tunnel `json:"items"`
}

func init() {
	SchemeBuilder.Register(&Tunnel{}, &TunnelList{})
}
