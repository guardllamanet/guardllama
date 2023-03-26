package middleware

import (
	"context"
	"crypto/subtle"
	"net/http"
)

func BasicAuth(creds func(ctx context.Context) map[string]string) func(next http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			user, pass, ok := r.BasicAuth()
			if !ok {
				basicAuthFailed(w)
				return
			}

			credPass, credUserOk := creds(r.Context())[user]
			if !credUserOk || subtle.ConstantTimeCompare([]byte(pass), []byte(credPass)) != 1 {
				basicAuthFailed(w)
				return
			}

			next.ServeHTTP(w, r)
		})
	}
}

func basicAuthFailed(w http.ResponseWriter) {
	w.WriteHeader(http.StatusUnauthorized)
}
