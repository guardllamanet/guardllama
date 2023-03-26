package ui

import (
	"fmt"
	"net/http"
)

func Handler() (http.Handler, error) {
	uiAssetFS, err := newUIAssetFS()
	if err != nil {
		return nil, fmt.Errorf("UI assets error: %w", err)
	}

	return http.FileServer(uiAssetFS), nil
}
