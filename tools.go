//go:build tools

package guardllama

//go:generate go install github.com/bufbuild/buf/cmd/buf
//go:generate go install github.com/envoyproxy/protoc-gen-validate
//go:generate go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway
//go:generate go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2
//go:generate go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
//go:generate go install google.golang.org/protobuf/cmd/protoc-gen-go
//go:generate go install sigs.k8s.io/controller-tools/cmd/controller-gen
//go:generate go install sigs.k8s.io/kustomize/kustomize/v4

import (
	_ "github.com/bufbuild/buf/cmd/buf"
	_ "github.com/envoyproxy/protoc-gen-validate"
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway"
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2"
	_ "google.golang.org/grpc/cmd/protoc-gen-go-grpc"
	_ "google.golang.org/protobuf/cmd/protoc-gen-go"
	_ "sigs.k8s.io/controller-tools/cmd/controller-gen"
	_ "sigs.k8s.io/kustomize/kustomize/v4"
)
