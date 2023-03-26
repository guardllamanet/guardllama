package externalip

import (
	"io"
	"io/ioutil"
	"log"
)

// NewLogger returns a new standard logger, with a given writer.
// if w is <nil>, all logs will be discarded.
func NewLogger(w io.Writer) *log.Logger {
	if w == nil {
		w = ioutil.Discard
	}

	return log.New(w, "",
		log.Ldate|log.Ltime|log.Lmicroseconds|log.Lshortfile)
}
