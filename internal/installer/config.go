package installer

import (
	"context"
	"errors"
	"io"
	"os"
	"path/filepath"
	"reflect"

	"github.com/gogo/protobuf/proto"
	"github.com/guardllamanet/guardllama/internal/util"
	"github.com/guardllamanet/guardllama/internal/web/api"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"github.com/imdario/mergo"
	"github.com/mitchellh/go-homedir"
	"github.com/sethvargo/go-password/password"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"k8s.io/apimachinery/pkg/runtime"
	clientgoscheme "k8s.io/client-go/kubernetes/scheme"
	"sigs.k8s.io/controller-runtime/pkg/client"
)

func ReadServerConfig(ctx context.Context, path string) (*apiv1.ServerConfig, error) {
	var (
		cfg = &apiv1.ServerConfig{}
		err error
	)

	if path == "" {
		return cfg, nil
	}

	var r io.ReadCloser
	if path == "-" {
		r = os.Stdin
	} else {
		r, err = os.Open(path)
		if err != nil {
			return cfg, err
		}
		defer r.Close()
	}

	b, err := io.ReadAll(r)
	if err != nil {
		return cfg, err
	}

	if err := util.ProtoYamlUnmarshal(b, cfg); err != nil {
		return cfg, err
	}
	if cfg.Cluster != nil {
		cfg.Cluster.KubeConfig, err = homedir.Expand(cfg.Cluster.KubeConfig)
		if err != nil {
			return cfg, err
		}
	}

	return cfg, cfg.ValidateAll()
}

func fillDefaultServerConfig(cfg *apiv1.ServerConfig) (*apiv1.ServerConfig, error) {
	def, err := defaultServerConfig()
	if err != nil {
		return nil, err
	}

	if err := merge(cfg, def); err != nil {
		return nil, err
	}

	return cfg, err
}

func loadServerConfig(ctx context.Context, cfg *apiv1.ServerConfig) (*apiv1.ServerConfig, error) {
	def, err := defaultServerConfig()
	if err != nil {
		return cfg, err
	}

	kubeconfig := def.Cluster.KubeConfig
	if cluster := cfg.Cluster; cluster != nil {
		kubeconfig = cluster.KubeConfig
	}

	// initially kubeconfig may not exist
	if _, err := os.Stat(kubeconfig); errors.Is(err, os.ErrNotExist) {
		if err := merge(cfg, def); err != nil {
			return cfg, err
		}

		return cfg, nil
	}

	// load existing
	c, err := newK8sClient(kubeconfig)
	if err != nil {
		return cfg, err
	}

	existing, err := c.GetServerConfig(ctx)
	if err != nil {
		return cfg, err
	}

	if err := merge(existing, def); err != nil {
		return cfg, err
	}

	if err := merge(cfg, existing); err != nil {
		return cfg, err
	}

	return cfg, nil
}

func saveServerConfig(ctx context.Context, cfg *apiv1.ServerConfig) error {
	c, err := newK8sClient(cfg.Cluster.KubeConfig)
	if err != nil {
		return err
	}

	return c.UpsertServerConfig(ctx, cfg)
}

func defaultServerConfig() (*apiv1.ServerConfig, error) {
	dir, err := configDir()
	if err != nil {
		return nil, err
	}

	token, err := password.Generate(16, 10, 0, false, true)
	if err != nil {
		return nil, err
	}

	return &apiv1.ServerConfig{
		Cluster: &apiv1.ServerConfig_Cluster{
			KubeConfig: filepath.Join(dir, "kubeconfig.yml"),
		},
		Manager: &apiv1.ServerConfig_Image{
			Image: "ghcr.io/guardllamanet/glmmgr",
		},
		Wg: &apiv1.ServerConfig_Image{
			Image: "ghcr.io/guardllamanet/glmmgr-wg",
		},
		Credentials: &apiv1.ServerConfig_Credentials{
			Api: &apiv1.ServerConfig_Credentials_Api{
				Token: token,
			},
		},
	}, nil
}

func configDir() (string, error) {
	dir, err := os.UserConfigDir()
	if err != nil {
		return "", err
	}

	return filepath.Join(dir, "guardllama"), nil
}

func merge(a proto.Message, b proto.Message) error {
	return mergo.Merge(a, b, mergo.WithTransformers(&wrapperspbTransformer{}))
}

type wrapperspbTransformer struct{}

func (t wrapperspbTransformer) Transformer(typ reflect.Type) func(dst, src reflect.Value) error {
	switch typ {
	case reflect.TypeOf(&wrapperspb.BoolValue{}),
		reflect.TypeOf(&wrapperspb.StringValue{}),
		reflect.TypeOf(&wrapperspb.BytesValue{}),
		reflect.TypeOf(&wrapperspb.DoubleValue{}),
		reflect.TypeOf(&wrapperspb.FloatValue{}),
		reflect.TypeOf(&wrapperspb.Int64Value{}),
		reflect.TypeOf(&wrapperspb.UInt64Value{}),
		reflect.TypeOf(&wrapperspb.Int32Value{}),
		reflect.TypeOf(&wrapperspb.UInt32Value{}):
		return func(dst, src reflect.Value) error {
			// only overwrite a wrapper type if the destination
			// nil. This prevents mergo from recursing into the
			// wrapper type itself and attempting to merge against
			// the primative `value` field, which means that zero
			// values would get overwritten despite being
			// explicitly set through the destination wrapper.
			//
			// Basically this transformer forces wrapperpb types to merge correctly
			if dst.CanSet() && dst.IsNil() {
				dst.Set(src)
			}
			return nil
		}
	default:
		return nil
	}
}

func newK8sClient(kubeconfig string) (*api.K8sClient, error) {
	cfg := util.NewK8sClientConfig(kubeconfig, "")
	rc, err := cfg.ClientConfig()
	if err != nil {
		return nil, err
	}

	scheme := runtime.NewScheme()
	_ = clientgoscheme.AddToScheme(scheme)

	c, err := client.New(rc, client.Options{Scheme: scheme})
	if err != nil {
		return nil, err
	}

	return &api.K8sClient{Client: c}, nil
}
