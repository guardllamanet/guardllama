package controller

import (
	"strings"
	"time"

	"github.com/go-logr/logr"
	"golang.org/x/exp/maps"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"sigs.k8s.io/controller-runtime/pkg/controller/controllerutil"
)

type Step struct {
	Name string
	Run  func() (controllerutil.OperationResult, error)
}

func RunSteps(log logr.Logger, steps ...Step) error {
	for _, s := range steps {
		if err := runStep(log, s); err != nil {
			return err
		}
	}

	return nil
}

func runStep(log logr.Logger, s Step) error {
	ll := log.WithValues("step", s.Name)

	ll.WithValues("at", "start").Info("")
	t0 := time.Now()
	op, err := s.Run()
	if err != nil {
		ll.Error(err, "error running step")
	}
	ll.WithValues("at", "end", "elapsed", time.Since(t0).Seconds(), "op", op).Info("")

	return err
}

func MergeLabels(lbls ...map[string]string) map[string]string {
	ret := map[string]string{}

	for _, lbl := range lbls {
		maps.Copy(ret, lbl)
	}

	return ret
}

func IsDeleted(obj metav1.Object) bool {
	return obj.GetDeletionTimestamp() != nil
}

// filterSystemLabels filters labels/annotations that are added
func filterSystemLabels(m map[string]string) map[string]string {
	mm := make(map[string]string)
	for k, v := range m {
		if strings.Contains(k, SystemLabelPrefix) {
			mm[k] = v
		}
	}

	return mm
}
