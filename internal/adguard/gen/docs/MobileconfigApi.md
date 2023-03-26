# \MobileconfigApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MobileConfigDoH**](MobileconfigApi.md#MobileConfigDoH) | **Get** /apple/doh.mobileconfig | Get DNS over HTTPS .mobileconfig.
[**MobileConfigDoT**](MobileconfigApi.md#MobileConfigDoT) | **Get** /apple/dot.mobileconfig | Get DNS over TLS .mobileconfig.



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
    resp, r, err := apiClient.MobileconfigApi.MobileConfigDoH(context.Background()).Host(host).ClientId(clientId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MobileconfigApi.MobileConfigDoH``: %v\n", err)
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
    resp, r, err := apiClient.MobileconfigApi.MobileConfigDoT(context.Background()).Host(host).ClientId(clientId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MobileconfigApi.MobileConfigDoT``: %v\n", err)
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

