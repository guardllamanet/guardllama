package grpcutil

import (
	"context"
	"net/http"
	"strings"

	"github.com/go-chi/chi/v5/middleware"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/guardllamanet/guardllama/internal/log"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/encoding/protojson"
)

const (
	HTTPEndpointHeader = "x-http-endpoint"
	RequestIDHeader    = "x-request-id"
)

func HeaderMatcher(key string) (string, bool) {
	switch strings.ToLower(key) {
	case RequestIDHeader, HTTPEndpointHeader:
		return key, true
	default:
		return runtime.DefaultHeaderMatcher(key)
	}
}

func WithRequestMetadata() runtime.ServeMuxOption {
	return runtime.WithMetadata(func(ctx context.Context, req *http.Request) metadata.MD {
		return metadata.Pairs(
			RequestIDHeader, middleware.GetReqID(ctx),
			HTTPEndpointHeader, extractEndpoint(req),
		)
	})
}

func WithPrettyJSONMarshaler() runtime.ServeMuxOption {
	return runtime.WithMarshalerOption(runtime.MIMEWildcard, &runtime.HTTPBodyMarshaler{
		Marshaler: &runtime.JSONPb{
			MarshalOptions: protojson.MarshalOptions{
				UseProtoNames:   true,
				EmitUnpopulated: true,
			},
			UnmarshalOptions: protojson.UnmarshalOptions{
				DiscardUnknown: true,
			},
		},
	})
}

func WithErrorHandler(logger *log.Logger) runtime.ServeMuxOption {
	return runtime.WithErrorHandler(
		func(
			ctx context.Context,
			mux *runtime.ServeMux,
			marshaler runtime.Marshaler,
			w http.ResponseWriter,
			r *http.Request,
			err error,
		) {
			logger.Error(
				"error processing HTTP request",
				"error", err.Error(),
				log.RequestIDField, middleware.GetReqID(ctx),
				log.HTTPEndpointField, extractEndpoint(r),
			)

			runtime.DefaultHTTPErrorHandler(ctx, mux, marshaler, w, r, err)
		},
	)
}

func extractEndpoint(r *http.Request) string {
	return r.Method + " " + r.URL.Path
}
