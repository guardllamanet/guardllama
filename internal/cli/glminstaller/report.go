package glminstaller

import (
	"runtime"
	"time"

	"github.com/denisbrodbeck/machineid"
	"github.com/google/uuid"
	"github.com/guardllamanet/guardllama/internal/build"
	"github.com/guardllamanet/guardllama/internal/log"
	"github.com/guardllamanet/guardllama/internal/tele"
	"github.com/spf13/cobra"
	"github.com/spf13/pflag"
	"go4.org/types"
)

func WithTelemetry(parent *cobra.Command) {
	trackCmd(parent)

	for _, c := range parent.Commands() {
		WithTelemetry(c)
	}
}

type TrackEvent struct {
	event  *tele.Event
	client tele.Client
}

func (te *TrackEvent) CaptureErrAndReport(err error) error {
	te.event.EndTime = timeNow()
	if err != nil {
		te.event.Err = err.Error()
	}

	return te.client.SendEvent(te.event)
}

func NewTrackEvent(c *cobra.Command, args []string) (*TrackEvent, error) {
	machineID, err := machineid.ID()
	if err != nil {
		return nil, err
	}

	flags := map[string]string{}
	c.PersistentFlags().VisitAll(func(f *pflag.Flag) {
		flags[f.Name] = f.Value.String()
	})

	e := &tele.Event{
		TraceID:   uuid.New().String(),
		MachineID: machineID,

		Type: "cli",
		Name: c.CommandPath(),
		Details: map[string]any{
			"args":  args,
			"flags": flags,
		},

		StartTime: timeNow(),

		Version: build.Version,

		GOOS:   runtime.GOOS,
		GOARCH: runtime.GOARCH,
	}

	return &TrackEvent{
		event:  e,
		client: tele.NewClient(nil),
	}, nil
}

func trackCmd(c *cobra.Command) {
	if runE := c.RunE; runE != nil {
		c.RunE = trackRunE(runE)
	}
	if run := c.Run; run != nil {
		c.Run = trackRun(run)
	}
}

func trackRun(run func(*cobra.Command, []string)) func(*cobra.Command, []string) {
	return func(c *cobra.Command, args []string) {
		trackRunE(func(c *cobra.Command, args []string) error {
			run(c, args)
			return nil
		})
	}
}

func trackRunE(runE func(*cobra.Command, []string) error) func(*cobra.Command, []string) error {
	return func(c *cobra.Command, args []string) (err error) {
		logger := log.NewTextLogger()

		trackEvent, err := NewTrackEvent(c, args)
		if err != nil {
			logger.Debug("error creating telemetry", "error", err.Error())
		}

		defer func() {
			if trackEvent != nil {
				if err := trackEvent.CaptureErrAndReport(err); err != nil {
					logger.Debug("error sending telemetry", "error", err.Error())
				}
			}
		}()

		err = runE(c, args)

		return err
	}
}

func timeNow() types.Time3339 {
	return types.Time3339(time.Now())
}
