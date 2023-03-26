package glminstaller

import (
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"runtime"
	"testing"
	"time"

	"github.com/google/go-cmp/cmp"
	"github.com/guardllamanet/guardllama/internal/tele"
	"github.com/spf13/cobra"
)

func Test_TrackEvent(t *testing.T) {
	c := &cobra.Command{
		Use: "my_command",
	}

	te, err := NewTrackEvent(c, []string{"arg1", "arg2"})
	if err != nil {
		t.Error(err)
	}

	ts := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		var ev tele.Event

		if err := json.NewDecoder(r.Body).Decode(&ev); err != nil {
			t.Error(err)
		}

		if ev.TraceID == "" {
			t.Error("TraceID should not be empty")
		}
		if ev.MachineID == "" {
			t.Error("MachineID should not be emtpy")
		}

		if diff := cmp.Diff("cli", ev.Type); diff != "" {
			t.Errorf("mismatch of type (-want +got): %s", diff)
		}
		if diff := cmp.Diff("my_command", ev.Name); diff != "" {
			t.Errorf("mismatch of name (-want +got): %s", diff)
		}
		if diff := cmp.Diff(map[string]any{"args": []any{"arg1", "arg2"}, "flags": map[string]any{}}, ev.Details); diff != "" {
			t.Errorf("mismatch of details (-want +got): %s", diff)
		}
		if diff := cmp.Diff("my error", ev.Err); diff != "" {
			t.Errorf("mismatch of error (-want +got): %s", diff)
		}
		if diff := cmp.Diff(runtime.GOOS, ev.GOOS); diff != "" {
			t.Errorf("mismatch of GOOS (-want +got): %s", diff)
		}
		if diff := cmp.Diff(runtime.GOARCH, ev.GOARCH); diff != "" {
			t.Errorf("mismatch of GOARCH (-want +got): %s", diff)
		}
		if time.Time(ev.StartTime).IsZero() {
			t.Errorf("start time should not be empty")
		}
		if time.Time(ev.EndTime).IsZero() {
			t.Errorf("end time should not be empty")
		}
	}))
	defer ts.Close()

	te.client = tele.NewTeleClient(&tele.ClientOptions{URL: ts.URL})

	if err := te.CaptureErrAndReport(fmt.Errorf("my error")); err != nil {
		t.Error(err)
	}
}
