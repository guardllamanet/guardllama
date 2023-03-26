/*
Copyright 2023 GuardLlama.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package v1

import (
	"errors"
	"fmt"

	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/webhook"
)

func (r *Tunnel) SetupWebhookWithManager(mgr ctrl.Manager) error {
	return ctrl.NewWebhookManagedBy(mgr).
		For(r).
		Complete()
}

//+kubebuilder:webhook:path=/mutate-tunnel-guardllama-net-v1-tunnel,mutating=true,failurePolicy=fail,sideEffects=None,groups=tunnel.guardllama.net,resources=tunnels,verbs=create;update,versions=v1,name=mtunnel.kb.io,admissionReviewVersions=v1

var _ webhook.Defaulter = &Tunnel{}

func (r *Tunnel) Default() {
	for _, t := range tunnelConditions.GetConditionTypes() {
		cond := r.Status.GetCondition(t)
		if cond == nil {
			r.Status.SetCondition(t, corev1.ConditionUnknown, "", "")
		}
	}

	adGuard := r.Spec.DNS.AdGuard
	if adGuard != nil {
		defaultFilteringEnabled := true
		if adGuard.FilteringEnabled == nil {
			adGuard.FilteringEnabled = &defaultFilteringEnabled
		}
	}
}

//+kubebuilder:webhook:path=/validate-tunnel-guardllama-net-v1-tunnel,mutating=false,failurePolicy=fail,sideEffects=None,groups=tunnel.guardllama.net,resources=tunnels,verbs=create;update,versions=v1,name=vtunnel.kb.io,admissionReviewVersions=v1

var _ webhook.Validator = &Tunnel{}

func (r *Tunnel) ValidateCreate() error {
	return validateTunnel(r)
}

func (r *Tunnel) ValidateUpdate(old runtime.Object) error {
	return validateTunnel(r)
}

// ValidateDelete implements webhook.Validator so a webhook will be registered for the type
func (r *Tunnel) ValidateDelete() error {
	return nil
}

func validateTunnel(r *Tunnel) error {
	var err error

	wireGuard := r.Spec.Protocol.WireGuard
	if wireGuard == nil {
		err = errors.Join(err, fmt.Errorf("WireGuard protocol is the only supported protocol and can not be empty"))
	} else {
		ingressPort := wireGuard.Interface.IngressPort
		if ingressPort != 0 && (ingressPort < 30000 || ingressPort > 32767) {
			err = errors.Join(err, fmt.Errorf("WireGuard ingress port should be between 30000 to 32767 included"))
		}
	}

	if r.Spec.DNS.AdGuard == nil {
		err = errors.Join(err, fmt.Errorf("AdGuard DNS is the only supported DNS and can not be empty"))
	}

	return err
}
