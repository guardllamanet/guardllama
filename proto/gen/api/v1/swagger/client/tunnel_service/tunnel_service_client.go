// Code generated by go-swagger; DO NOT EDIT.

package tunnel_service

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new tunnel service API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for tunnel service API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientOption is the option for Client methods
type ClientOption func(*runtime.ClientOperation)

// ClientService is the interface for Client methods
type ClientService interface {
	TunnelServiceCreateTunnel(params *TunnelServiceCreateTunnelParams, opts ...ClientOption) (*TunnelServiceCreateTunnelOK, error)

	TunnelServiceGetTunnel(params *TunnelServiceGetTunnelParams, opts ...ClientOption) (*TunnelServiceGetTunnelOK, error)

	TunnelServiceListTunnels(params *TunnelServiceListTunnelsParams, opts ...ClientOption) (*TunnelServiceListTunnelsOK, error)

	TunnelServiceRemoveTunnel(params *TunnelServiceRemoveTunnelParams, opts ...ClientOption) (*TunnelServiceRemoveTunnelOK, error)

	TunnelServiceUpdateDNSBlockLists(params *TunnelServiceUpdateDNSBlockListsParams, opts ...ClientOption) (*TunnelServiceUpdateDNSBlockListsOK, error)

	TunnelServiceUpdateDNSFilteringEnabled(params *TunnelServiceUpdateDNSFilteringEnabledParams, opts ...ClientOption) (*TunnelServiceUpdateDNSFilteringEnabledOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
TunnelServiceCreateTunnel tunnel service create tunnel API
*/
func (a *Client) TunnelServiceCreateTunnel(params *TunnelServiceCreateTunnelParams, opts ...ClientOption) (*TunnelServiceCreateTunnelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceCreateTunnelParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_CreateTunnel",
		Method:             "POST",
		PathPattern:        "/tunnels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceCreateTunnelReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceCreateTunnelOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceCreateTunnelDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

/*
TunnelServiceGetTunnel tunnel service get tunnel API
*/
func (a *Client) TunnelServiceGetTunnel(params *TunnelServiceGetTunnelParams, opts ...ClientOption) (*TunnelServiceGetTunnelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceGetTunnelParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_GetTunnel",
		Method:             "GET",
		PathPattern:        "/tunnels/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceGetTunnelReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceGetTunnelOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceGetTunnelDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

/*
TunnelServiceListTunnels tunnel service list tunnels API
*/
func (a *Client) TunnelServiceListTunnels(params *TunnelServiceListTunnelsParams, opts ...ClientOption) (*TunnelServiceListTunnelsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceListTunnelsParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_ListTunnels",
		Method:             "GET",
		PathPattern:        "/tunnels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceListTunnelsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceListTunnelsOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceListTunnelsDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

/*
TunnelServiceRemoveTunnel tunnel service remove tunnel API
*/
func (a *Client) TunnelServiceRemoveTunnel(params *TunnelServiceRemoveTunnelParams, opts ...ClientOption) (*TunnelServiceRemoveTunnelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceRemoveTunnelParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_RemoveTunnel",
		Method:             "DELETE",
		PathPattern:        "/tunnels/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceRemoveTunnelReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceRemoveTunnelOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceRemoveTunnelDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

/*
TunnelServiceUpdateDNSBlockLists tunnel service update DNS block lists API
*/
func (a *Client) TunnelServiceUpdateDNSBlockLists(params *TunnelServiceUpdateDNSBlockListsParams, opts ...ClientOption) (*TunnelServiceUpdateDNSBlockListsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceUpdateDNSBlockListsParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_UpdateDNSBlockLists",
		Method:             "PUT",
		PathPattern:        "/tunnels/{name}/dns_block_lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceUpdateDNSBlockListsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceUpdateDNSBlockListsOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceUpdateDNSBlockListsDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

/*
TunnelServiceUpdateDNSFilteringEnabled tunnel service update DNS filtering enabled API
*/
func (a *Client) TunnelServiceUpdateDNSFilteringEnabled(params *TunnelServiceUpdateDNSFilteringEnabledParams, opts ...ClientOption) (*TunnelServiceUpdateDNSFilteringEnabledOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTunnelServiceUpdateDNSFilteringEnabledParams()
	}
	op := &runtime.ClientOperation{
		ID:                 "TunnelService_UpdateDNSFilteringEnabled",
		Method:             "PUT",
		PathPattern:        "/tunnels/{name}/dns_filtering_enabled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"http"},
		Params:             params,
		Reader:             &TunnelServiceUpdateDNSFilteringEnabledReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	}
	for _, opt := range opts {
		opt(op)
	}

	result, err := a.transport.Submit(op)
	if err != nil {
		return nil, err
	}
	success, ok := result.(*TunnelServiceUpdateDNSFilteringEnabledOK)
	if ok {
		return success, nil
	}
	// unexpected success response
	unexpectedSuccess := result.(*TunnelServiceUpdateDNSFilteringEnabledDefault)
	return nil, runtime.NewAPIError("unexpected success response: content available as default response in error", unexpectedSuccess, unexpectedSuccess.Code())
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
