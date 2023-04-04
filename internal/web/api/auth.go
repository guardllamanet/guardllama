package api

import (
	"context"
	"fmt"
	"net/http"
	"time"

	"github.com/go-chi/jwtauth"
	apiv1 "github.com/guardllamanet/guardllama/proto/gen/api/v1"
	"github.com/lestrrat-go/jwx/jwt"
	"google.golang.org/protobuf/types/known/timestamppb"
)

const (
	jwtTokenValidDuration = 1 * time.Hour
)

type AuthService struct {
	apiv1.UnimplementedAuthServiceServer

	*K8sClient
	*jwtauth.JWTAuth
}

func (a *AuthService) Authenticate(ctx context.Context, req *apiv1.AuthenticateRequest) (*apiv1.AuthenticateResponse, error) {
	if err := req.ValidateAll(); err != nil {
		return nil, StatusInvalidArg(err)
	}

	scfg, err := a.K8sClient.GetServerConfig(ctx)
	if err != nil {
		return nil, StatusInternal(err)
	}

	if scfg.Credentials.Api.Token != req.Creds.Token {
		return nil, StatusUnauthenticated(fmt.Errorf("invalid token"))
	}

	expiresAt := time.Now().Add(jwtTokenValidDuration)
	_, tokenString, err := a.JWTAuth.Encode(map[string]interface{}{
		"token":           req.Creds.Token,
		jwt.ExpirationKey: expiresAt,
		jwt.IssuerKey:     "guardllama",
	})
	if err != nil {
		return nil, StatusInternal(err)
	}

	cookie := http.Cookie{
		Name:     "jwt",
		Value:    tokenString,
		Expires:  expiresAt,
		SameSite: http.SameSiteStrictMode,
	}

	return &apiv1.AuthenticateResponse{
		JwtToken: &apiv1.JwtToken{
			Token:     tokenString,
			ExpiresAt: timestamppb.New(expiresAt),
		},
		Cookie: cookie.String(),
	}, nil
}
