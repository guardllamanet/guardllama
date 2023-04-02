package web

import (
	"fmt"
	"net/http"
	"net/http/httputil"
	"net/url"
	"strings"

	"github.com/go-chi/chi/v5"
)

func AGHProxyHandler(w http.ResponseWriter, r *http.Request) {
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

	r.URL.Path = trimPathPrefix(r.URL.Path, prefix)
	r.URL.RawPath = trimPathPrefix(r.URL.RawPath, prefix)

	u, err := url.Parse(fmt.Sprintf("http://ag-%s.%s", name, name))
	if err != nil {
		http.Error(w, err.Error(), http.StatusPreconditionFailed)
		return
	}

	proxy := httputil.NewSingleHostReverseProxy(u)
	proxy.ServeHTTP(w, r)
}

func trimPathPrefix(s, prefix string) string {
	r := strings.TrimPrefix(s, prefix)
	fmt.Println(r)
	if !strings.HasPrefix(r, "/") {
		return "/" + r
	}

	return r
}
