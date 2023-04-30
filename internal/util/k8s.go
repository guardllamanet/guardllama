package util

import (
	v1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"k8s.io/client-go/tools/clientcmd"
	clientcmdapi "k8s.io/client-go/tools/clientcmd/api"
)

func NewK8sClientConfig(kubeconfig, ns string) clientcmd.ClientConfig {
	if ns == "" {
		ns = "default"
	}

	loader := &clientcmd.ClientConfigLoadingRules{
		ExplicitPath: kubeconfig,
	}
	overrides := &clientcmd.ConfigOverrides{
		Context: clientcmdapi.Context{
			Namespace: ns,
		},
	}

	return clientcmd.NewNonInteractiveDeferredLoadingClientConfig(loader, overrides)
}

func VPNPortRange(pr *v1.ServerConfig_Cluster_VpnPortRange) (fromPort int32, toPort int32) {
	fromPort = pr.FromPort
	toPort = pr.ToPort + 2 // Add 2 to account for traefik port 80 & 443

	if toPort > 32767 {
		toPort = 32767
	}

	return fromPort, toPort
}
