// Code generated by go-swagger; DO NOT EDIT.

package models

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"

	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// V1WireGuardPeer v1 wire guard peer
//
// swagger:model v1WireGuardPeer
type V1WireGuardPeer struct {

	// TODO: add cidr
	AllowedIps []string `json:"allowed_ips"`

	// endpoint
	Endpoint string `json:"endpoint,omitempty"`

	// persistent keepalive interval
	PersistentKeepaliveInterval string `json:"persistent_keepalive_interval,omitempty"`

	// preshared key
	PresharedKey string `json:"preshared_key,omitempty"`

	// public key
	PublicKey string `json:"public_key,omitempty"`
}

// Validate validates this v1 wire guard peer
func (m *V1WireGuardPeer) Validate(formats strfmt.Registry) error {
	return nil
}

// ContextValidate validates this v1 wire guard peer based on context it is used
func (m *V1WireGuardPeer) ContextValidate(ctx context.Context, formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *V1WireGuardPeer) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *V1WireGuardPeer) UnmarshalBinary(b []byte) error {
	var res V1WireGuardPeer
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
