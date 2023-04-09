package web

import (
	"context"
	"fmt"
	"net"
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-chi/cors"
	"github.com/go-chi/jwtauth"
	grpcruntime "github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/util"
	"github.com/guardllamanet/guardllama/internal/web/api"
	"github.com/guardllamanet/guardllama/internal/web/grpcutil"
	gmiddleware "github.com/guardllamanet/guardllama/internal/web/middleware"
	"github.com/guardllamanet/guardllama/internal/web/ui"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"sigs.k8s.io/controller-runtime/pkg/client"
)

type Config struct {
	WebAddr          string `mapstructure:"web-addr"`
	JWTSignKeyPath   string `mapstructure:"jwt-sign-key-path"`
	JWTVerifyKeyPath string `mapstructure:"jwt-verify-key-path"`

	JWTAuth *jwtauth.JWTAuth
	Client  client.Client
	Logger  *log.Logger
}

func (c Config) Validate() error {
	if c.WebAddr == "" {
		return fmt.Errorf("web-addr can not be empty")
	}
	if c.JWTSignKeyPath == "" {
		return fmt.Errorf("jwt-sign-key-path can not be empty")
	}
	if c.JWTVerifyKeyPath == "" {
		return fmt.Errorf("jwt-verify-key-path can not be empty")
	}

	return nil
}

func NewServer(cfg Config) *Server {
	return &Server{cfg: cfg}
}

type Server struct {
	cfg Config
}

func (s *Server) Run(ctx context.Context) error {
	s.cfg.Logger.Info("starting web")

	srv, err := newHTTPServer(ctx, s.cfg)
	if err != nil {
		return err
	}

	httpln, err := net.Listen("tcp", s.cfg.WebAddr)
	if err != nil {
		return err
	}
	defer httpln.Close()

	defer func() {
		_ = srv.Shutdown(ctx)
	}()

	return srv.Serve(httpln)
}

func newHTTPServer(ctx context.Context, cfg Config) (*http.Server, error) {
	var (
		authMux = newGPRCMux(cfg)
		apiMux  = newGPRCMux(cfg)
		client  = &api.K8sClient{Client: cfg.Client}
	)

	if err := apiv1.RegisterAuthServiceHandlerServer(ctx, authMux, &api.AuthService{
		K8sClient: client,
		JWTAuth:   cfg.JWTAuth,
	}); err != nil {
		return nil, err
	}

	if err := apiv1.RegisterTunnelServiceHandlerServer(ctx, apiMux, &api.TunnelService{
		K8sClient:    client,
		EndpointHost: util.MachineIP(), // TODO: refresh periodically
		Logger:       cfg.Logger.WithGroup("TunnelService"),
	}); err != nil {
		return nil, err
	}
	if err := apiv1.RegisterServerServiceHandlerServer(ctx, apiMux, &api.ServerService{
		K8sClient: client,
		Logger:    cfg.Logger.WithGroup("ServerService"),
	}); err != nil {
		return nil, err
	}

	r := chi.NewRouter()

	r.Use(middleware.RequestID)
	r.Use(middleware.CleanPath)
	r.Use(middleware.RequestLogger(gmiddleware.NewLogFormatter(cfg.Logger)))
	r.Use(middleware.Compress(5))
	r.Use(middleware.Recoverer)
	r.Use(cors.Handler(cors.Options{
		AllowedOrigins:   []string{"https://*", "http://*"},
		AllowedMethods:   []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"Accept", "Authorization", "Content-Type", "X-CSRF-Token"},
		ExposedHeaders:   []string{"*", "Authorization"},
		AllowCredentials: true,
		MaxAge:           300,
	}))
	r.Use(middleware.Heartbeat("/health"))

	uiHandler, err := ui.Handler()
	if err != nil {
		return nil, err
	}
	uiHandler = http.StripPrefix("/ui", uiHandler)
	r.Handle("/ui", uiHandler)
	r.Handle("/ui/*", uiHandler)

	r.HandleFunc(
		"/",
		func(w http.ResponseWriter, r *http.Request) {
			http.Redirect(w, r, "/ui", http.StatusFound)
		},
	)

	r.Handle("/authenticate", authMux)

	routerWithAuth := r.With(
		jwtauth.Verifier(cfg.JWTAuth),
		jwtauth.Authenticator,
	)

	proxyHandler := AGHProxyHandler(client)
	routerWithAuth.HandleFunc(
		"/tunnels/{name}/agh",
		proxyHandler,
	)
	routerWithAuth.HandleFunc(
		"/tunnels/{name}/agh/*",
		proxyHandler,
	)

	gmuxHandler := http.StripPrefix("/api", apiMux)
	routerWithAuth.Handle("/api", gmuxHandler)
	routerWithAuth.Handle("/api/*", gmuxHandler)

	return &http.Server{
		Handler: r,
	}, nil
}

func newGPRCMux(cfg Config) *grpcruntime.ServeMux {
	return grpcruntime.NewServeMux(
		grpcruntime.WithIncomingHeaderMatcher(grpcutil.HeaderMatcher),
		grpcruntime.WithOutgoingHeaderMatcher(grpcutil.HeaderMatcher),
		grpcutil.WithRequestMetadata(),
		grpcutil.WithPrettyJSONMarshaler(),
		grpcutil.WithErrorHandler(cfg.Logger),
	)
}
