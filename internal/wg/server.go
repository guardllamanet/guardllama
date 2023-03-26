package wg

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"os"
	"syscall"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-logr/logr"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	gmiddleware "github.com/guardllamanet/guardllama/internal/web/middleware"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"github.com/oklog/run"
	"golang.zx2c4.com/wireguard/wgctrl"
	"golang.zx2c4.com/wireguard/wgctrl/wgtypes"
	"google.golang.org/protobuf/encoding/protojson"
)

type WGClient interface {
	Devices() ([]*wgtypes.Device, error)
}

type ServerConfig struct {
	HttpAddr     string `mapstructure:"http-addr"`
	TunnelConfig string `mapstructure:"tunnel-config"`

	Logger logr.Logger
}

func (c ServerConfig) Validate() error {
	if c.HttpAddr == "" {
		return fmt.Errorf("missing http-addr")
	}
	if c.TunnelConfig == "" {
		return fmt.Errorf("missing tunnel-config")
	}

	return nil
}

func NewServer(cfg ServerConfig) *Server {
	return &Server{cfg: cfg}
}

type Server struct {
	cfg ServerConfig
}

func (s *Server) Run(ctx context.Context, httpln net.Listener) error {
	b, err := os.ReadFile(s.cfg.TunnelConfig)
	if err != nil {
		return err
	}

	wgc, err := readWgConfig(b)
	if err != nil {
		return err
	}

	wg := NewWgQuick(s.cfg.Logger)
	if err := wg.Up(*wgc); err != nil {
		return err
	}

	cl, err := wgctrl.New()
	if err != nil {
		return err
	}
	defer cl.Close()

	var g run.Group
	g.Add(run.SignalHandler(ctx, syscall.SIGTERM))
	{
		srv, err := s.newHTTPServer(ctx, cl, *wgc)
		if err != nil {
			return err
		}

		g.Add(func() error {
			return srv.Serve(httpln)
		}, func(err error) {
			_ = srv.Shutdown(ctx)
		})
	}

	return g.Run()
}

func (s *Server) newHTTPServer(ctx context.Context, wl WGClient, wgc WgConfig) (*http.Server, error) {
	gmux := runtime.NewServeMux(
		runtime.WithMarshalerOption(runtime.MIMEWildcard, &runtime.HTTPBodyMarshaler{
			Marshaler: &runtime.JSONPb{
				MarshalOptions: protojson.MarshalOptions{
					UseProtoNames:   true,
					EmitUnpopulated: true,
				},
				UnmarshalOptions: protojson.UnmarshalOptions{
					DiscardUnknown: true,
				},
			},
		}),
	)
	if err := apiv1.RegisterWireGuardServiceHandlerServer(ctx, gmux, &WireGuardService{
		client: wl,
	}); err != nil {
		return nil, err
	}

	r := chi.NewRouter()

	r.Use(middleware.RequestID)
	r.Use(middleware.CleanPath)
	r.Use(middleware.RequestLogger(gmiddleware.NewLogFormatter(s.cfg.Logger)))
	r.Use(middleware.Recoverer)

	r.Handle("/*", gmux)
	r.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		if r.Method != http.MethodGet {
			http.Error(w, "method not allowed", http.StatusMethodNotAllowed)
			return
		}

		devs, err := wl.Devices()
		if err != nil {
			http.Error(w, err.Error(), http.StatusServiceUnavailable)
			return
		}

		if want, got := 1, len(devs); want != got {
			http.Error(w, fmt.Sprintf("WireGuard device number does not match: want=%d got=%d", want, got), http.StatusBadRequest)
			return
		}

		if want, got := wgc.PrivateKey.PublicKey().String(), devs[0].PublicKey.String(); want != got {
			http.Error(w, fmt.Sprintf("WireGuard public key does not match: want=%s got=%s", want, got), http.StatusBadRequest)
			return
		}

		fmt.Fprintln(w, ".")
	})

	return &http.Server{
		Handler: r,
	}, nil
}
