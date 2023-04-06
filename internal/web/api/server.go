package api

import (
	"context"
	"fmt"

	"github.com/guardllamanet/guardllama/internal/build"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	apierrors "k8s.io/apimachinery/pkg/api/errors"
)

type ServerService struct {
	apiv1.UnimplementedServerServiceServer

	*K8sClient
	Logger *log.Logger
}

func (s *ServerService) GetServerConfig(ctx context.Context, req *apiv1.GetServerConfigRequest) (*apiv1.GetServerConfigResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	cfg, err := s.K8sClient.GetServerConfig(ctx)
	if err != nil {
		if apierrors.IsNotFound(err) {
			return nil, StatusNotFound(fmt.Errorf("server config not found"))
		}

		return nil, StatusInternal(fmt.Errorf("error getting tunnel: %w", err))
	}
	cfg.Credentials = nil // ignore creds

	return &apiv1.GetServerConfigResponse{Config: cfg}, nil
}
func (s *ServerService) GetServer(ctx context.Context, req *apiv1.GetServerRequest) (*apiv1.GetServerResponse, error) {
	cfg, err := s.K8sClient.GetServerConfig(ctx)
	if err != nil {
		if apierrors.IsNotFound(err) {
			return nil, StatusNotFound(fmt.Errorf("server config not found"))
		}

		return nil, StatusInternal(fmt.Errorf("error getting tunnel: %w", err))
	}
	cfg.Credentials = nil // ignore creds

	var k8sDistro string
	if cfg.Cluster.GetK3D() == nil {
		k8sDistro = "k3s"
	} else {
		k8sDistro = "k3d"
	}

	return &apiv1.GetServerResponse{
		Server: &apiv1.Server{
			Config: cfg,
			Status: &apiv1.ServerStatus{
				MachineIp:              util.MachineIP(),
				ServerVersion:          build.FormattedVersion(),
				KubernetesDistribution: k8sDistro,
				KubernetesVersion:      build.K3sVersion,
			},
		},
	}, nil
}
