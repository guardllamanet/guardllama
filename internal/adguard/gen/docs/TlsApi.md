# \TlsApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TlsConfigure**](TlsApi.md#TlsConfigure) | **Post** /tls/configure | Updates current TLS configuration
[**TlsStatus**](TlsApi.md#TlsStatus) | **Get** /tls/status | Returns TLS configuration and its status
[**TlsValidate**](TlsApi.md#TlsValidate) | **Post** /tls/validate | Checks if the current TLS configuration is valid



## TlsConfigure

> TlsConfig TlsConfigure(ctx).TlsConfig(tlsConfig).Execute()

Updates current TLS configuration

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    tlsConfig := *openapiclient.NewTlsConfig() // TlsConfig | TLS configuration JSON

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TlsApi.TlsConfigure(context.Background()).TlsConfig(tlsConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TlsApi.TlsConfigure``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TlsConfigure`: TlsConfig
    fmt.Fprintf(os.Stdout, "Response from `TlsApi.TlsConfigure`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTlsConfigureRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tlsConfig** | [**TlsConfig**](TlsConfig.md) | TLS configuration JSON | 

### Return type

[**TlsConfig**](TlsConfig.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TlsStatus

> TlsConfig TlsStatus(ctx).Execute()

Returns TLS configuration and its status

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TlsApi.TlsStatus(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TlsApi.TlsStatus``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TlsStatus`: TlsConfig
    fmt.Fprintf(os.Stdout, "Response from `TlsApi.TlsStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiTlsStatusRequest struct via the builder pattern


### Return type

[**TlsConfig**](TlsConfig.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TlsValidate

> TlsConfig TlsValidate(ctx).TlsConfig(tlsConfig).Execute()

Checks if the current TLS configuration is valid

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    tlsConfig := *openapiclient.NewTlsConfig() // TlsConfig | TLS configuration JSON

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TlsApi.TlsValidate(context.Background()).TlsConfig(tlsConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TlsApi.TlsValidate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TlsValidate`: TlsConfig
    fmt.Fprintf(os.Stdout, "Response from `TlsApi.TlsValidate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTlsValidateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tlsConfig** | [**TlsConfig**](TlsConfig.md) | TLS configuration JSON | 

### Return type

[**TlsConfig**](TlsConfig.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

