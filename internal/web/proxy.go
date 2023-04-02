package web

import (
	"fmt"
	"net/http"
	"net/http/httputil"
	"net/url"
	"strings"

	"github.com/go-chi/chi/v5"
	glmv1 "github.com/guardllamanet/guardllama/api/v1"
	"github.com/guardllamanet/guardllama/internal/web/api"
	apierrors "k8s.io/apimachinery/pkg/api/errors"
	"sigs.k8s.io/controller-runtime/pkg/client"
)

func AGHProxyHandler(c *api.K8sClient) func(w http.ResponseWriter, r *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		var (
			name   = chi.URLParam(r, "name")
			prefix = "/tunnels/" + name + "/agh"
		)

		// Make sure to redirect to the trailing slash version of the path
		// Otherwise AGH asset paths will not be resolved correctly
		if r.URL.Path == prefix {
			http.Redirect(w, r, r.URL.Path+"/", http.StatusFound)
			return
		}

		var tun glmv1.Tunnel
		if err := c.Get(r.Context(), client.ObjectKey{Namespace: name, Name: name}, &tun); err != nil {
			code := http.StatusInternalServerError
			if apierrors.IsNotFound(err) {
				code = http.StatusNotFound
			}

			http.Error(w, err.Error(), code)
			return
		}

		r.URL.Path = trimPathPrefix(r.URL.Path, prefix)
		r.URL.RawPath = trimPathPrefix(r.URL.RawPath, prefix)

		u, err := url.Parse(fmt.Sprintf("http://%s", tun.AdGuardServiceHost()))
		if err != nil {
			http.Error(w, err.Error(), http.StatusPreconditionFailed)
			return
		}

		proxy := httputil.NewSingleHostReverseProxy(u)
		proxy.ServeHTTP(w, r)
	}
}

func trimPathPrefix(s, prefix string) string {
	r := strings.TrimPrefix(s, prefix)
	fmt.Println(r)
	if !strings.HasPrefix(r, "/") {
		return "/" + r
	}

	return r
}
