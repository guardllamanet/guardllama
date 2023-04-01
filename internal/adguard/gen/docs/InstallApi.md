# \InstallApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**InstallCheckConfig**](InstallApi.md#InstallCheckConfig) | **Post** /install/check_config | Checks configuration
[**InstallConfigure**](InstallApi.md#InstallConfigure) | **Post** /install/configure | Applies the initial configuration.
[**InstallGetAddresses**](InstallApi.md#InstallGetAddresses) | **Get** /install/get_addresses | Gets the network interfaces information.



## InstallCheckConfig

> CheckConfigResponse InstallCheckConfig(ctx).CheckConfigRequest(checkConfigRequest).Execute()

Checks configuration

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
    checkConfigRequest := *openapiclient.NewCheckConfigRequest() // CheckConfigRequest | Configuration to be checked

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.InstallApi.InstallCheckConfig(context.Background()).CheckConfigRequest(checkConfigRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallCheckConfig``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `InstallCheckConfig`: CheckConfigResponse
    fmt.Fprintf(os.Stdout, "Response from `InstallApi.InstallCheckConfig`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiInstallCheckConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkConfigRequest** | [**CheckConfigRequest**](CheckConfigRequest.md) | Configuration to be checked | 

### Return type

[**CheckConfigResponse**](CheckConfigResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## InstallConfigure

> InstallConfigure(ctx).InitialConfiguration(initialConfiguration).Execute()

Applies the initial configuration.

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
    initialConfiguration := *openapiclient.NewInitialConfiguration(*openapiclient.NewAddressInfo("127.0.0.1", int32(53)), *openapiclient.NewAddressInfo("127.0.0.1", int32(53)), "admin", "password") // InitialConfiguration | Initial configuration JSON

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.InstallApi.InstallConfigure(context.Background()).InitialConfiguration(initialConfiguration).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallConfigure``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiInstallConfigureRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initialConfiguration** | [**InitialConfiguration**](InitialConfiguration.md) | Initial configuration JSON | 

### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## InstallGetAddresses

> AddressesInfo InstallGetAddresses(ctx).Execute()

Gets the network interfaces information.

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
    resp, r, err := apiClient.InstallApi.InstallGetAddresses(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallGetAddresses``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `InstallGetAddresses`: AddressesInfo
    fmt.Fprintf(os.Stdout, "Response from `InstallApi.InstallGetAddresses`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiInstallGetAddressesRequest struct via the builder pattern


### Return type

[**AddressesInfo**](AddressesInfo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

