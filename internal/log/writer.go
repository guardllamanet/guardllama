package log

import (
	"bufio"
	"io"
	"runtime"

	"golang.org/x/exp/slog"
)

// Writer returns an io.PipeWriter that writes to the logger.
// Ref implementation: https://github.com/sirupsen/logrus/blob/f8bf7650dccb756cea26edaf9217aab85500fe07/writer.go#L27-L55
func (l *Logger) Writer() *io.PipeWriter {
	reader, writer := io.Pipe()

	var printFunc func(msg string, args ...any)
	switch level.Level() {
	case slog.LevelDebug:
		printFunc = l.Debug
	case slog.LevelError:
		printFunc = l.Error
	case slog.LevelInfo:
		printFunc = l.Info
	case slog.LevelWarn:
		printFunc = l.Warn
	default:
		printFunc = l.Info
	}

	go l.writerScanner(reader, printFunc)
	runtime.SetFinalizer(writer, writerFinalizer)

	return writer
}

func (l *Logger) writerScanner(reader *io.PipeReader, printFunc func(msg string, args ...any)) {
	scanner := bufio.NewScanner(reader)
	for scanner.Scan() {
		printFunc(scanner.Text())
	}
	if err := scanner.Err(); err != nil {
		l.Error("error while reading from Writer", err)
	}

	reader.Close()
}

func writerFinalizer(writer *io.PipeWriter) {
	writer.Close()
}
