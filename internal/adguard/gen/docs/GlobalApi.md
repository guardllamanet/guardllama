# \GlobalApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BeginUpdate**](GlobalApi.md#BeginUpdate) | **Post** /update | Begin auto-upgrade procedure
[**DnsConfig**](GlobalApi.md#DnsConfig) | **Post** /dns_config | Set general DNS parameters
[**DnsInfo**](GlobalApi.md#DnsInfo) | **Get** /dns_info | Get general DNS parameters
[**GetProfile**](GlobalApi.md#GetProfile) | **Get** /profile | 
[**GetVersionJson**](GlobalApi.md#GetVersionJson) | **Post** /version.json | Gets information about the latest available version of AdGuard 
[**Login**](GlobalApi.md#Login) | **Post** /login | Perform administrator log-in
[**Logout**](GlobalApi.md#Logout) | **Get** /logout | Perform administrator log-out
[**MobileConfigDoH**](GlobalApi.md#MobileConfigDoH) | **Get** /apple/doh.mobileconfig | Get DNS over HTTPS .mobileconfig.
[**MobileConfigDoT**](GlobalApi.md#MobileConfigDoT) | **Get** /apple/dot.mobileconfig | Get DNS over TLS .mobileconfig.
[**Status**](GlobalApi.md#Status) | **Get** /status | Get DNS server current status and general settings
[**TestUpstreamDNS**](GlobalApi.md#TestUpstreamDNS) | **Post** /test_upstream_dns | Test upstream configuration



## BeginUpdate

> BeginUpdate(ctx).Execute()

Begin auto-upgrade procedure

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
    resp, r, err := apiClient.GlobalApi.BeginUpdate(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.BeginUpdate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiBeginUpdateRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DnsConfig

> DnsConfig(ctx).DNSConfig(dNSConfig).Execute()

Set general DNS parameters

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
    dNSConfig := *openapiclient.NewDNSConfig() // DNSConfig |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.DnsConfig(context.Background()).DNSConfig(dNSConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.DnsConfig``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDnsConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dNSConfig** | [**DNSConfig**](DNSConfig.md) |  | 

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


## DnsInfo

> DnsInfo200Response DnsInfo(ctx).Execute()

Get general DNS parameters

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
    resp, r, err := apiClient.GlobalApi.DnsInfo(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.DnsInfo``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DnsInfo`: DnsInfo200Response
    fmt.Fprintf(os.Stdout, "Response from `GlobalApi.DnsInfo`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDnsInfoRequest struct via the builder pattern


### Return type

[**DnsInfo200Response**](DnsInfo200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetProfile

> ProfileInfo GetProfile(ctx).Execute()



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
    resp, r, err := apiClient.GlobalApi.GetProfile(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.GetProfile``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetProfile`: ProfileInfo
    fmt.Fprintf(os.Stdout, "Response from `GlobalApi.GetProfile`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetProfileRequest struct via the builder pattern


### Return type

[**ProfileInfo**](ProfileInfo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVersionJson

> VersionInfo GetVersionJson(ctx).GetVersionRequest(getVersionRequest).Execute()

Gets information about the latest available version of AdGuard 

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
    getVersionRequest := *openapiclient.NewGetVersionRequest() // GetVersionRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.GetVersionJson(context.Background()).GetVersionRequest(getVersionRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.GetVersionJson``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetVersionJson`: VersionInfo
    fmt.Fprintf(os.Stdout, "Response from `GlobalApi.GetVersionJson`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetVersionJsonRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getVersionRequest** | [**GetVersionRequest**](GetVersionRequest.md) |  | 

### Return type

[**VersionInfo**](VersionInfo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Login

> Login(ctx).Login(login).Execute()

Perform administrator log-in

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
    login := *openapiclient.NewLogin() // Login | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.Login(context.Background()).Login(login).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.Login``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiLoginRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | [**Login**](Login.md) |  | 

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


## Logout

> Logout(ctx).Execute()

Perform administrator log-out

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
    resp, r, err := apiClient.GlobalApi.Logout(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.Logout``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLogoutRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MobileConfigDoH

> MobileConfigDoH(ctx).Host(host).ClientId(clientId).Execute()

Get DNS over HTTPS .mobileconfig.

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
    host := "example.org" // string | Host for which the config is generated.  If no host is provided, `tls.server_name` from the configuration file is used.  If `tls.server_name` is not set, the API returns an error with a 500 status. 
    clientId := "client-1" // string | ClientID.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.MobileConfigDoH(context.Background()).Host(host).ClientId(clientId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.MobileConfigDoH``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMobileConfigDoHRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **string** | Host for which the config is generated.  If no host is provided, &#x60;tls.server_name&#x60; from the configuration file is used.  If &#x60;tls.server_name&#x60; is not set, the API returns an error with a 500 status.  | 
 **clientId** | **string** | ClientID.  | 

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


## MobileConfigDoT

> MobileConfigDoT(ctx).Host(host).ClientId(clientId).Execute()

Get DNS over TLS .mobileconfig.

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
    host := "example.org" // string | Host for which the config is generated.  If no host is provided, `tls.server_name` from the configuration file is used.  If `tls.server_name` is not set, the API returns an error with a 500 status. 
    clientId := "client-1" // string | ClientID.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.MobileConfigDoT(context.Background()).Host(host).ClientId(clientId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.MobileConfigDoT``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMobileConfigDoTRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **string** | Host for which the config is generated.  If no host is provided, &#x60;tls.server_name&#x60; from the configuration file is used.  If &#x60;tls.server_name&#x60; is not set, the API returns an error with a 500 status.  | 
 **clientId** | **string** | ClientID.  | 

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


## Status

> ServerStatus Status(ctx).Execute()

Get DNS server current status and general settings

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
    resp, r, err := apiClient.GlobalApi.Status(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.Status``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `Status`: ServerStatus
    fmt.Fprintf(os.Stdout, "Response from `GlobalApi.Status`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiStatusRequest struct via the builder pattern


### Return type

[**ServerStatus**](ServerStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TestUpstreamDNS

> map[string]string TestUpstreamDNS(ctx).UpstreamsConfig(upstreamsConfig).Execute()

Test upstream configuration

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
    upstreamsConfig := *openapiclient.NewUpstreamsConfig([]string{"BootstrapDns_example"}, []string{"UpstreamDns_example"}) // UpstreamsConfig | Upstream configuration to be tested (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.GlobalApi.TestUpstreamDNS(context.Background()).UpstreamsConfig(upstreamsConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `GlobalApi.TestUpstreamDNS``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TestUpstreamDNS`: map[string]string
    fmt.Fprintf(os.Stdout, "Response from `GlobalApi.TestUpstreamDNS`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTestUpstreamDNSRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upstreamsConfig** | [**UpstreamsConfig**](UpstreamsConfig.md) | Upstream configuration to be tested | 

### Return type

**map[string]string**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

