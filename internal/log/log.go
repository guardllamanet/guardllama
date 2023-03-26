package log

import (
	"context"
	"os"

	"github.com/go-logr/logr"
	"golang.org/x/exp/slog"
	"sigs.k8s.io/controller-runtime/pkg/log/zap"
)

func NewLogger(dev bool) logr.Logger {
	opts := zap.Options{
		Development: dev,
	}

	return zap.New(zap.UseFlagOptions(&opts))
}

var (
	level = new(slog.LevelVar)
)

func init() {
	slog.SetDefault(NewTextLogger().Logger)
}

func SetLevel(l slog.Level) {
	level.Set(l)
}

type Logger struct {
	*slog.Logger
}

func NewTextLogger() *Logger {
	return &Logger{slog.New(slog.HandlerOptions{Level: level}.NewTextHandler(os.Stderr))}
}

type contextKey struct{}

func IntoContext(ctx context.Context) context.Context {
	return context.WithValue(ctx, contextKey{}, NewTextLogger())
}

func FromContext(ctx context.Context) *Logger {
	if ctx != nil {
		if v, ok := ctx.Value(contextKey{}).(*Logger); ok {
			return v
		}
	}

	return NewTextLogger()
}
