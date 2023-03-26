package charts

import (
	"embed"
	"fmt"
	"io"
	"io/fs"
	"os"
	"path/filepath"
)

//go:embed all:*
var ChartsFS embed.FS

func CopyCharts(dstDir string) error {
	return fs.WalkDir(ChartsFS, ".", func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return fs.SkipDir
		}

		dst := filepath.Join(dstDir, path)

		if d.IsDir() {
			if err = os.MkdirAll(dst, 0755); err != nil {
				return fmt.Errorf("cannot mkdir %w", err)
			}

			return nil
		}

		in, err := ChartsFS.Open(path)
		if err != nil {
			return fmt.Errorf("cannot open file %w", err)
		}
		defer in.Close()

		out, err := os.OpenFile(dst, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)
		if err != nil {
			return fmt.Errorf("cannot create dst file %w", err)
		}

		if _, err = io.Copy(out, in); err != nil {
			out.Close()
			return fmt.Errorf("cannot copy file %w", err)
		}

		if err = out.Close(); err != nil {
			return fmt.Errorf("cannot close dst file %w", err)
		}

		return nil
	})
}
