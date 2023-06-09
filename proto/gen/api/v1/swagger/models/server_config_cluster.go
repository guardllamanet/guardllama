// Code generated by go-swagger; DO NOT EDIT.

package models

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ServerConfigCluster server config cluster
//
// swagger:model ServerConfigCluster
type ServerConfigCluster struct {

	// host
	Host string `json:"host,omitempty"`

	// k3d
	K3d *ClusterK3d `json:"k3d,omitempty"`

	// k3s
	K3s ClusterK3s `json:"k3s,omitempty"`

	// kube config
	KubeConfig string `json:"kube_config,omitempty"`

	// vpn port range
	VpnPortRange *ClusterVpnPortRange `json:"vpn_port_range,omitempty"`
}

// Validate validates this server config cluster
func (m *ServerConfigCluster) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateK3d(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateVpnPortRange(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ServerConfigCluster) validateK3d(formats strfmt.Registry) error {
	if swag.IsZero(m.K3d) { // not required
		return nil
	}

	if m.K3d != nil {
		if err := m.K3d.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("k3d")
			} else if ce, ok := err.(*errors.CompositeError); ok {
				return ce.ValidateName("k3d")
			}
			return err
		}
	}

	return nil
}

func (m *ServerConfigCluster) validateVpnPortRange(formats strfmt.Registry) error {
	if swag.IsZero(m.VpnPortRange) { // not required
		return nil
	}

	if m.VpnPortRange != nil {
		if err := m.VpnPortRange.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("vpn_port_range")
			} else if ce, ok := err.(*errors.CompositeError); ok {
				return ce.ValidateName("vpn_port_range")
			}
			return err
		}
	}

	return nil
}

// ContextValidate validate this server config cluster based on the context it is used
func (m *ServerConfigCluster) ContextValidate(ctx context.Context, formats strfmt.Registry) error {
	var res []error

	if err := m.contextValidateK3d(ctx, formats); err != nil {
		res = append(res, err)
	}

	if err := m.contextValidateVpnPortRange(ctx, formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ServerConfigCluster) contextValidateK3d(ctx context.Context, formats strfmt.Registry) error {

	if m.K3d != nil {
		if err := m.K3d.ContextValidate(ctx, formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("k3d")
			} else if ce, ok := err.(*errors.CompositeError); ok {
				return ce.ValidateName("k3d")
			}
			return err
		}
	}

	return nil
}

func (m *ServerConfigCluster) contextValidateVpnPortRange(ctx context.Context, formats strfmt.Registry) error {

	if m.VpnPortRange != nil {
		if err := m.VpnPortRange.ContextValidate(ctx, formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("vpn_port_range")
			} else if ce, ok := err.(*errors.CompositeError); ok {
				return ce.ValidateName("vpn_port_range")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ServerConfigCluster) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServerConfigCluster) UnmarshalBinary(b []byte) error {
	var res ServerConfigCluster
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
