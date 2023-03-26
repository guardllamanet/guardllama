package middleware

import (
	"fmt"
	"net/http"
	"time"

	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-logr/logr"
)

func NewLogFormatter(l logr.Logger) *LogFormatter {
	return &LogFormatter{logger: l}
}

type LogFormatter struct {
	logger logr.Logger
}

func (l *LogFormatter) NewLogEntry(r *http.Request) middleware.LogEntry {
	return &logrLogEntry{
		Request: r,
		Logger:  l.logger,
	}
}

type logrLogEntry struct {
	*http.Request
	logr.Logger
}

func (l *logrLogEntry) Write(status, bytes int, header http.Header, elapsed time.Duration, extra interface{}) {
	reqID := middleware.GetReqID(l.Context())

	l.Logger.Info(
		fmt.Sprintf("%s %s", l.Method, l.RequestURI),
		"method", l.Method,
		"path", l.RequestURI,
		"status", status,
		"proto", l.Proto,
		"bytes", bytes,
		"elapsed", elapsed,
		"request-id", reqID,
		"remote", l.RemoteAddr,
	)
}

func (l *logrLogEntry) Panic(v interface{}, stack []byte) {
	middleware.PrintPrettyStack(v)
}
