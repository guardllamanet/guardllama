# \InstallApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**InstallCheckConfig**](InstallApi.md#InstallCheckConfig) | **Post** /install/check_config | Checks configuration
[**InstallCheckConfigBeta**](InstallApi.md#InstallCheckConfigBeta) | **Post** /install/check_config_beta | &#39;UNSTABLE!: Checks configuration&#39; 
[**InstallConfigure**](InstallApi.md#InstallConfigure) | **Post** /install/configure | Applies the initial configuration.
[**InstallConfigureBeta**](InstallApi.md#InstallConfigureBeta) | **Post** /install/configure_beta | &#39;UNSTABLE!: Applies the initial configuration.&#39; 
[**InstallGetAddresses**](InstallApi.md#InstallGetAddresses) | **Get** /install/get_addresses | Gets the network interfaces information.
[**InstallGetAddressesBeta**](InstallApi.md#InstallGetAddressesBeta) | **Get** /install/get_addresses_beta | &#39;UNSTABLE!: Gets the network interfaces information.&#39; 



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


## InstallCheckConfigBeta

> CheckConfigResponse InstallCheckConfigBeta(ctx).CheckConfigRequestBeta(checkConfigRequestBeta).Execute()

'UNSTABLE!: Checks configuration' 

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
    checkConfigRequestBeta := *openapiclient.NewCheckConfigRequestBeta() // CheckConfigRequestBeta | Configuration to be checked

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.InstallApi.InstallCheckConfigBeta(context.Background()).CheckConfigRequestBeta(checkConfigRequestBeta).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallCheckConfigBeta``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `InstallCheckConfigBeta`: CheckConfigResponse
    fmt.Fprintf(os.Stdout, "Response from `InstallApi.InstallCheckConfigBeta`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiInstallCheckConfigBetaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkConfigRequestBeta** | [**CheckConfigRequestBeta**](CheckConfigRequestBeta.md) | Configuration to be checked | 

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


## InstallConfigureBeta

> InstallConfigureBeta(ctx).InitialConfigurationBeta(initialConfigurationBeta).Execute()

'UNSTABLE!: Applies the initial configuration.' 

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
    initialConfigurationBeta := *openapiclient.NewInitialConfigurationBeta(*openapiclient.NewAddressInfoBeta([]string{"Ip_example"}, int32(53)), *openapiclient.NewAddressInfoBeta([]string{"Ip_example"}, int32(53)), "admin", "password") // InitialConfigurationBeta | Initial configuration JSON

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.InstallApi.InstallConfigureBeta(context.Background()).InitialConfigurationBeta(initialConfigurationBeta).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallConfigureBeta``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiInstallConfigureBetaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initialConfigurationBeta** | [**InitialConfigurationBeta**](InitialConfigurationBeta.md) | Initial configuration JSON | 

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


## InstallGetAddressesBeta

> AddressesInfoBeta InstallGetAddressesBeta(ctx).Execute()

'UNSTABLE!: Gets the network interfaces information.' 

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
    resp, r, err := apiClient.InstallApi.InstallGetAddressesBeta(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `InstallApi.InstallGetAddressesBeta``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `InstallGetAddressesBeta`: AddressesInfoBeta
    fmt.Fprintf(os.Stdout, "Response from `InstallApi.InstallGetAddressesBeta`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiInstallGetAddressesBetaRequest struct via the builder pattern


### Return type

[**AddressesInfoBeta**](AddressesInfoBeta.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

