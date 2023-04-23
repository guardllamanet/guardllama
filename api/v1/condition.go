package v1

import (
	"sort"
	"strings"

	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

type ConditionType string

type Conditions []Condition

func (c Conditions) Len() int {
	return len(c)
}

func (c Conditions) Swap(i int, j int) {
	c[i], c[j] = c[j], c[i]
}

func (c Conditions) Less(i int, j int) bool {
	return c[i].Type < c[j].Type
}

type Condition struct {
	Type               ConditionType          `json:"type"`
	Status             corev1.ConditionStatus `json:"status"`
	Reason             string                 `json:"reason,omitempty"`
	Message            string                 `json:"message,omitempty"`
	LastTransitionTime *metav1.Time           `json:"lastTransitionTime,omitempty"`
}

func (c *Condition) IsTrue() bool {
	if c == nil {
		return false
	}
	return c.Status == corev1.ConditionTrue
}

func (c *Condition) IsFalse() bool {
	if c == nil {
		return false
	}
	return c.Status == corev1.ConditionFalse
}

func (c *Condition) IsUnknown() bool {
	if c == nil {
		return true
	}
	return c.Status == corev1.ConditionUnknown
}

// ConditionSet contains a main condition and a set of dependent conditions.
// When all dependent conditions are met, the main condition is met.
type ConditionSet struct {
	main ConditionType
	deps []ConditionType
}

func NewConditionSet(main ConditionType, deps ...ConditionType) ConditionSet {
	return ConditionSet{
		main: main,
		deps: deps,
	}
}

func (l ConditionSet) GetConditionTypes() []ConditionType {
	types := []ConditionType{l.main}
	return append(types, l.deps...)
}

func (l ConditionSet) GetCondition(conds Conditions, t ConditionType) *Condition {
	for _, cond := range conds {
		if cond.Type == t {
			return &cond
		}
	}

	return nil
}

func (l ConditionSet) SetCondition(
	conds Conditions,
	ct ConditionType,
	status corev1.ConditionStatus,
	reason string,
	message string,
) Conditions {
	newConds := setCondition(conds, ct, status, reason, message)

	hasFailedCond := false
	hasUnknownCond := false
	var (
		failedMsgs  []string
		unknownMsgs []string
	)

	for _, dep := range l.deps {
		found := false

		for _, cond := range newConds {
			if cond.Type == dep {
				found = true
				if cond.IsFalse() {
					hasFailedCond = true
					failedMsgs = append(failedMsgs, cond.Message)
				} else if cond.IsUnknown() {
					hasUnknownCond = true
					unknownMsgs = append(unknownMsgs, cond.Message)
				}
			}
		}

		if !found {
			hasUnknownCond = true
		}
	}

	if hasFailedCond {
		return setCondition(newConds, l.main, corev1.ConditionFalse, "ConditionFailed", strings.Join(failedMsgs, "; "))
	} else if hasUnknownCond {
		return setCondition(newConds, l.main, corev1.ConditionUnknown, "ConditionUnknown", strings.Join(unknownMsgs, "; "))
	}

	return setCondition(newConds, l.main, corev1.ConditionTrue, "OK", "")
}

func setCondition(
	conds Conditions,
	ct ConditionType,
	status corev1.ConditionStatus,
	reason string,
	message string,
) Conditions {
	var (
		now         = metav1.Now()
		newConds    = make(Conditions, 0, len(conds))
		updatedCond = Condition{
			Type:               ct,
			Status:             status,
			Reason:             reason,
			Message:            message,
			LastTransitionTime: now.DeepCopy(),
		}
	)

	shouldCreate := true
	for _, cond := range conds {
		if cond.Type == ct {
			shouldCreate = false
			if !condEquals(cond, status, reason, message) {
				newConds = append(newConds, updatedCond)
				continue
			}
		}

		newConds = append(newConds, cond)
	}

	if shouldCreate {
		newConds = append(newConds, updatedCond)
	}

	sort.Sort(newConds)

	return newConds
}

func condEquals(cond Condition, status corev1.ConditionStatus, reason string, message string) bool {
	return cond.Status == status &&
		cond.Reason == reason &&
		cond.Message == message
}
