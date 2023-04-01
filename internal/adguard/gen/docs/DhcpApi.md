# \DhcpApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CheckActiveDhcp**](DhcpApi.md#CheckActiveDhcp) | **Post** /dhcp/find_active_dhcp | Searches for an active DHCP server on the network
[**DhcpAddStaticLease**](DhcpApi.md#DhcpAddStaticLease) | **Post** /dhcp/add_static_lease | Adds a static lease
[**DhcpInterfaces**](DhcpApi.md#DhcpInterfaces) | **Get** /dhcp/interfaces | Gets the available interfaces
[**DhcpRemoveStaticLease**](DhcpApi.md#DhcpRemoveStaticLease) | **Post** /dhcp/remove_static_lease | Removes a static lease
[**DhcpReset**](DhcpApi.md#DhcpReset) | **Post** /dhcp/reset | Reset DHCP configuration
[**DhcpResetLeases**](DhcpApi.md#DhcpResetLeases) | **Post** /dhcp/reset_leases | Reset DHCP leases
[**DhcpSetConfig**](DhcpApi.md#DhcpSetConfig) | **Post** /dhcp/set_config | Updates the current DHCP server configuration
[**DhcpStatus**](DhcpApi.md#DhcpStatus) | **Get** /dhcp/status | Gets the current DHCP settings and status



## CheckActiveDhcp

> DhcpSearchResult CheckActiveDhcp(ctx).DhcpFindActiveReq(dhcpFindActiveReq).Execute()

Searches for an active DHCP server on the network

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
    dhcpFindActiveReq := *openapiclient.NewDhcpFindActiveReq() // DhcpFindActiveReq |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DhcpApi.CheckActiveDhcp(context.Background()).DhcpFindActiveReq(dhcpFindActiveReq).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.CheckActiveDhcp``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CheckActiveDhcp`: DhcpSearchResult
    fmt.Fprintf(os.Stdout, "Response from `DhcpApi.CheckActiveDhcp`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCheckActiveDhcpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dhcpFindActiveReq** | [**DhcpFindActiveReq**](DhcpFindActiveReq.md) |  | 

### Return type

[**DhcpSearchResult**](DhcpSearchResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpAddStaticLease

> DhcpAddStaticLease(ctx).DhcpStaticLease(dhcpStaticLease).Execute()

Adds a static lease

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
    dhcpStaticLease := *openapiclient.NewDhcpStaticLease("00:11:09:b3:b3:b8", "192.168.1.22", "dell") // DhcpStaticLease | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DhcpApi.DhcpAddStaticLease(context.Background()).DhcpStaticLease(dhcpStaticLease).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpAddStaticLease``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDhcpAddStaticLeaseRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dhcpStaticLease** | [**DhcpStaticLease**](DhcpStaticLease.md) |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpInterfaces

> map[string]NetInterface DhcpInterfaces(ctx).Execute()

Gets the available interfaces

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
    resp, r, err := apiClient.DhcpApi.DhcpInterfaces(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpInterfaces``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DhcpInterfaces`: map[string]NetInterface
    fmt.Fprintf(os.Stdout, "Response from `DhcpApi.DhcpInterfaces`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDhcpInterfacesRequest struct via the builder pattern


### Return type

[**map[string]NetInterface**](NetInterface.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpRemoveStaticLease

> DhcpRemoveStaticLease(ctx).DhcpStaticLease(dhcpStaticLease).Execute()

Removes a static lease

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
    dhcpStaticLease := *openapiclient.NewDhcpStaticLease("00:11:09:b3:b3:b8", "192.168.1.22", "dell") // DhcpStaticLease | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DhcpApi.DhcpRemoveStaticLease(context.Background()).DhcpStaticLease(dhcpStaticLease).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpRemoveStaticLease``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDhcpRemoveStaticLeaseRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dhcpStaticLease** | [**DhcpStaticLease**](DhcpStaticLease.md) |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpReset

> DhcpReset(ctx).Execute()

Reset DHCP configuration

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
    resp, r, err := apiClient.DhcpApi.DhcpReset(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpReset``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDhcpResetRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpResetLeases

> DhcpResetLeases(ctx).Execute()

Reset DHCP leases

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
    resp, r, err := apiClient.DhcpApi.DhcpResetLeases(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpResetLeases``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDhcpResetLeasesRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpSetConfig

> DhcpSetConfig(ctx).DhcpConfig(dhcpConfig).Execute()

Updates the current DHCP server configuration

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
    dhcpConfig := *openapiclient.NewDhcpConfig() // DhcpConfig |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DhcpApi.DhcpSetConfig(context.Background()).DhcpConfig(dhcpConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpSetConfig``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDhcpSetConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dhcpConfig** | [**DhcpConfig**](DhcpConfig.md) |  | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DhcpStatus

> DhcpStatus DhcpStatus(ctx).Execute()

Gets the current DHCP settings and status

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
    resp, r, err := apiClient.DhcpApi.DhcpStatus(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DhcpApi.DhcpStatus``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DhcpStatus`: DhcpStatus
    fmt.Fprintf(os.Stdout, "Response from `DhcpApi.DhcpStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDhcpStatusRequest struct via the builder pattern


### Return type

[**DhcpStatus**](DhcpStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

