package util

import (
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
