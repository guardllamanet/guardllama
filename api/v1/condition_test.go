package v1

import (
	"testing"

	"github.com/google/go-cmp/cmp"
	corev1 "k8s.io/api/core/v1"
)

func Test_ConditionSet(t *testing.T) {
	main := ConditionType("main")
	dep1 := ConditionType("dep1")
	dep2 := ConditionType("dep2")

	t.Run("main condition has no dependencies", func(t *testing.T) {
		s := NewConditionSet(main)
		conds := Conditions{}

		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep1, corev1.ConditionTrue, "", "")
		if want, got := true, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		if want, got := 2, len(conds); got != want {
			t.Errorf("number of conditions mismatch: want=%d got=%d", want, got)
		}
	})

	t.Run("main condition has one dependency", func(t *testing.T) {
		s := NewConditionSet(main, dep1)
		conds := Conditions{}

		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep1, corev1.ConditionFalse, "", "")
		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep1, corev1.ConditionTrue, "", "")
		if want, got := true, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		if want, got := 2, len(conds); got != want {
			t.Errorf("number of conditions mismatch: want=%d got=%d", want, got)
		}
	})

	t.Run("main condition has multiple dependencies", func(t *testing.T) {
		s := NewConditionSet(main, dep1, dep2)
		conds := Conditions{}

		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep1, corev1.ConditionFalse, "", "")
		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep1, corev1.ConditionTrue, "", "")
		if want, got := false, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep2, corev1.ConditionTrue, "", "")
		if want, got := true, s.GetCondition(conds, main).IsTrue(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}
	})

	t.Run("main condition has unknown condition", func(t *testing.T) {
		s := NewConditionSet(main, dep1, dep2)
		conds := Conditions{}

		conds = s.SetCondition(conds, dep1, corev1.ConditionTrue, "", "")

		gotMain := s.GetCondition(conds, main)
		if want, got := true, gotMain.IsUnknown(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}
		if diff := cmp.Diff("ConditionUnknown", gotMain.Reason); diff != "" {
			t.Errorf("Condition reason mismtach: (-want +got): %s", diff)
		}

		gotDep2 := s.GetCondition(conds, dep2)
		if want, got := true, gotDep2.IsUnknown(); want != got {
			t.Errorf("Dep2 condition mismtach: want=%v got=%v", want, got)
		}

		conds = s.SetCondition(conds, dep2, corev1.ConditionUnknown, "Unknown reason", "")
		gotMain = s.GetCondition(conds, main)
		if want, got := true, gotMain.IsUnknown(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}
		if diff := cmp.Diff("ConditionUnknown", gotMain.Reason); diff != "" {
			t.Errorf("Condition reason mismtach: (-want +got): %s", diff)
		}

		gotDep2 = s.GetCondition(conds, dep2)
		if want, got := true, gotDep2.IsUnknown(); want != got {
			t.Errorf("Dep2 condition mismtach: want=%v got=%v", want, got)
		}
		if diff := cmp.Diff("Unknown reason", gotDep2.Reason); diff != "" {
			t.Errorf("Condition reason mismtach: (-want +got): %s", diff)
		}

		conds = s.SetCondition(conds, dep2, corev1.ConditionUnknown, "Another unknown reason", "")
		gotDep2 = s.GetCondition(conds, dep2)
		if want, got := true, gotDep2.IsUnknown(); want != got {
			t.Errorf("Dep2 condition mismtach: want=%v got=%v", want, got)
		}
		if diff := cmp.Diff("Another unknown reason", gotDep2.Reason); diff != "" {
			t.Errorf("Condition reason mismtach: (-want +got): %s", diff)
		}

		conds = s.SetCondition(conds, dep2, corev1.ConditionFalse, "", "")
		gotMain = s.GetCondition(conds, main)
		if want, got := true, gotMain.IsFalse(); want != got {
			t.Errorf("main condition mismtach: want=%v got=%v", want, got)
		}
		if diff := cmp.Diff("ConditionFailed", gotMain.Reason); diff != "" {
			t.Errorf("Condition reason mismtach: (-want +got): %s", diff)
		}

		gotDep2 = s.GetCondition(conds, dep2)
		if want, got := true, gotDep2.IsFalse(); want != got {
			t.Errorf("Dep2 condition mismtach: want=%v got=%v", want, got)
		}
	})
}
