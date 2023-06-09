// Code generated by go-swagger; DO NOT EDIT.

package tunnel_service

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewTunnelServiceUpdateDNSFilteringEnabledParams creates a new TunnelServiceUpdateDNSFilteringEnabledParams object,
// with the default timeout for this client.
//
// Default values are not hydrated, since defaults are normally applied by the API server side.
//
// To enforce default values in parameter, use SetDefaults or WithDefaults.
func NewTunnelServiceUpdateDNSFilteringEnabledParams() *TunnelServiceUpdateDNSFilteringEnabledParams {
	return &TunnelServiceUpdateDNSFilteringEnabledParams{
		timeout: cr.DefaultTimeout,
	}
}

// NewTunnelServiceUpdateDNSFilteringEnabledParamsWithTimeout creates a new TunnelServiceUpdateDNSFilteringEnabledParams object
// with the ability to set a timeout on a request.
func NewTunnelServiceUpdateDNSFilteringEnabledParamsWithTimeout(timeout time.Duration) *TunnelServiceUpdateDNSFilteringEnabledParams {
	return &TunnelServiceUpdateDNSFilteringEnabledParams{
		timeout: timeout,
	}
}

// NewTunnelServiceUpdateDNSFilteringEnabledParamsWithContext creates a new TunnelServiceUpdateDNSFilteringEnabledParams object
// with the ability to set a context for a request.
func NewTunnelServiceUpdateDNSFilteringEnabledParamsWithContext(ctx context.Context) *TunnelServiceUpdateDNSFilteringEnabledParams {
	return &TunnelServiceUpdateDNSFilteringEnabledParams{
		Context: ctx,
	}
}

// NewTunnelServiceUpdateDNSFilteringEnabledParamsWithHTTPClient creates a new TunnelServiceUpdateDNSFilteringEnabledParams object
// with the ability to set a custom HTTPClient for a request.
func NewTunnelServiceUpdateDNSFilteringEnabledParamsWithHTTPClient(client *http.Client) *TunnelServiceUpdateDNSFilteringEnabledParams {
	return &TunnelServiceUpdateDNSFilteringEnabledParams{
		HTTPClient: client,
	}
}

/*
TunnelServiceUpdateDNSFilteringEnabledParams contains all the parameters to send to the API endpoint

	for the tunnel service update DNS filtering enabled operation.

	Typically these are written to a http.Request.
*/
type TunnelServiceUpdateDNSFilteringEnabledParams struct {

	// Body.
	Body TunnelServiceUpdateDNSFilteringEnabledBody

	// Name.
	Name string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithDefaults hydrates default values in the tunnel service update DNS filtering enabled params (not the query body).
//
// All values with no default are reset to their zero value.
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithDefaults() *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetDefaults()
	return o
}

// SetDefaults hydrates default values in the tunnel service update DNS filtering enabled params (not the query body).
//
// All values with no default are reset to their zero value.
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetDefaults() {
	// no default values defined for this parameter
}

// WithTimeout adds the timeout to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithTimeout(timeout time.Duration) *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithContext(ctx context.Context) *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithHTTPClient(client *http.Client) *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithBody(body TunnelServiceUpdateDNSFilteringEnabledBody) *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetBody(body TunnelServiceUpdateDNSFilteringEnabledBody) {
	o.Body = body
}

// WithName adds the name to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WithName(name string) *TunnelServiceUpdateDNSFilteringEnabledParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the tunnel service update DNS filtering enabled params
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) SetName(name string) {
	o.Name = name
}

// WriteToRequest writes these params to a swagger request
func (o *TunnelServiceUpdateDNSFilteringEnabledParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error
	if err := r.SetBodyParam(o.Body); err != nil {
		return err
	}

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
