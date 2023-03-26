package api

import (
	"context"

	"github.com/guardllamanet/guardllama/internal/util"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"sigs.k8s.io/controller-runtime/pkg/client"
	"sigs.k8s.io/controller-runtime/pkg/controller/controllerutil"
)

type K8sClient struct {
	client.Client
}

func (c *K8sClient) EnsureNS(ctx context.Context, name string) (*corev1.Namespace, error) {
	ns := &corev1.Namespace{
		ObjectMeta: metav1.ObjectMeta{
			Name: name,
		},
	}

	if _, err := controllerutil.CreateOrUpdate(ctx, c, ns, func() error { return nil }); err != nil {
		return nil, err
	}

	return ns, nil
}

func (c *K8sClient) UpsertSecret(ctx context.Context, name, ns string, data map[string][]byte) (*corev1.Secret, error) {
	secret := &corev1.Secret{
		ObjectMeta: metav1.ObjectMeta{
			Name:      name,
			Namespace: ns,
		},
	}
	fn := func() error {
		secret.Data = data
		return nil
	}

	if _, err := controllerutil.CreateOrUpdate(ctx, c, secret, fn); err != nil {
		return nil, err
	}

	return secret, nil
}

func (c *K8sClient) GetSecret(ctx context.Context, name, ns string) (map[string][]byte, error) {
	secret := corev1.Secret{
		ObjectMeta: metav1.ObjectMeta{
			Name:      name,
			Namespace: ns,
		},
	}

	if err := c.Get(ctx, client.ObjectKeyFromObject(&secret), &secret); err != nil {
		return nil, err
	}

	data := secret.Data
	if data == nil {
		data = make(map[string][]byte)
	}

	return data, nil
}

func (c *K8sClient) GetServerConfig(ctx context.Context) (*apiv1.ServerConfig, error) {
	secret, err := c.GetSecret(ctx, "guardllama-config", "guardllama")
	if err != nil {
		return &apiv1.ServerConfig{}, client.IgnoreNotFound(err)
	}

	data, ok := secret["config.yml"]
	if !ok {
		return &apiv1.ServerConfig{}, nil
	}

	var cfg apiv1.ServerConfig
	err = util.ProtoYamlUnmarshal(data, &cfg)

	return &cfg, err
}

func (c *K8sClient) UpsertServerConfig(ctx context.Context, cfg *apiv1.ServerConfig) error {
	b, err := util.ProtoYamlMarshal(cfg)
	if err != nil {
		return err
	}

	_, err = c.UpsertSecret(ctx, "guardllama-config", "guardllama", map[string][]byte{"config.yml": b})
	return err
}
