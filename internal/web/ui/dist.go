package ui

import (
	"embed"
	"fmt"
	"io/fs"
	"net/http"
)

//go:embed dist/*
var distFS embed.FS

func newUIAssetFS() (http.FileSystem, error) {
	subFS, err := fs.Sub(distFS, "dist")
	if err != nil {
		panic(fmt.Errorf("couldn't create sub filesystem: %w", err))
	}

	return http.FS(subFS), nil
}
