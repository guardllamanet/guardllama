# \FilteringApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FilteringAddURL**](FilteringApi.md#FilteringAddURL) | **Post** /filtering/add_url | Add filter URL or an absolute file path
[**FilteringCheckHost**](FilteringApi.md#FilteringCheckHost) | **Get** /filtering/check_host | Check if host name is filtered
[**FilteringConfig**](FilteringApi.md#FilteringConfig) | **Post** /filtering/config | Set filtering parameters
[**FilteringRefresh**](FilteringApi.md#FilteringRefresh) | **Post** /filtering/refresh | Reload filtering rules from URLs.  This might be needed if new URL was just added and you don&#39;t want to wait for automatic refresh to kick in. This API request is ratelimited, so you can call it freely as often as you like, it wont create unnecessary burden on servers that host the URL.  This should work as intended, a &#x60;force&#x60; parameter is offered as last-resort attempt to make filter lists fresh.  If you ever find yourself using &#x60;force&#x60; to make something work that otherwise wont, this is a bug and report it accordingly. 
[**FilteringRemoveURL**](FilteringApi.md#FilteringRemoveURL) | **Post** /filtering/remove_url | Remove filter URL
[**FilteringSetRules**](FilteringApi.md#FilteringSetRules) | **Post** /filtering/set_rules | Set user-defined filter rules
[**FilteringSetURL**](FilteringApi.md#FilteringSetURL) | **Post** /filtering/set_url | Set URL parameters
[**FilteringStatus**](FilteringApi.md#FilteringStatus) | **Get** /filtering/status | Get filtering parameters



## FilteringAddURL

> FilteringAddURL(ctx).AddUrlRequest(addUrlRequest).Execute()

Add filter URL or an absolute file path

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
    addUrlRequest := *openapiclient.NewAddUrlRequest() // AddUrlRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringAddURL(context.Background()).AddUrlRequest(addUrlRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringAddURL``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringAddURLRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addUrlRequest** | [**AddUrlRequest**](AddUrlRequest.md) |  | 

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


## FilteringCheckHost

> FilterCheckHostResponse FilteringCheckHost(ctx).Name(name).Execute()

Check if host name is filtered

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
    name := "name_example" // string | Filter by host name (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringCheckHost(context.Background()).Name(name).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringCheckHost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FilteringCheckHost`: FilterCheckHostResponse
    fmt.Fprintf(os.Stdout, "Response from `FilteringApi.FilteringCheckHost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringCheckHostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Filter by host name | 

### Return type

[**FilterCheckHostResponse**](FilterCheckHostResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FilteringConfig

> FilteringConfig(ctx).FilterConfig(filterConfig).Execute()

Set filtering parameters

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
    filterConfig := *openapiclient.NewFilterConfig() // FilterConfig | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringConfig(context.Background()).FilterConfig(filterConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringConfig``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterConfig** | [**FilterConfig**](FilterConfig.md) |  | 

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


## FilteringRefresh

> FilterRefreshResponse FilteringRefresh(ctx).FilterRefreshRequest(filterRefreshRequest).Execute()

Reload filtering rules from URLs.  This might be needed if new URL was just added and you don't want to wait for automatic refresh to kick in. This API request is ratelimited, so you can call it freely as often as you like, it wont create unnecessary burden on servers that host the URL.  This should work as intended, a `force` parameter is offered as last-resort attempt to make filter lists fresh.  If you ever find yourself using `force` to make something work that otherwise wont, this is a bug and report it accordingly. 

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
    filterRefreshRequest := *openapiclient.NewFilterRefreshRequest() // FilterRefreshRequest |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringRefresh(context.Background()).FilterRefreshRequest(filterRefreshRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringRefresh``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FilteringRefresh`: FilterRefreshResponse
    fmt.Fprintf(os.Stdout, "Response from `FilteringApi.FilteringRefresh`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringRefreshRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterRefreshRequest** | [**FilterRefreshRequest**](FilterRefreshRequest.md) |  | 

### Return type

[**FilterRefreshResponse**](FilterRefreshResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FilteringRemoveURL

> FilteringRemoveURL(ctx).RemoveUrlRequest(removeUrlRequest).Execute()

Remove filter URL

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
    removeUrlRequest := *openapiclient.NewRemoveUrlRequest() // RemoveUrlRequest | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringRemoveURL(context.Background()).RemoveUrlRequest(removeUrlRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringRemoveURL``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringRemoveURLRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeUrlRequest** | [**RemoveUrlRequest**](RemoveUrlRequest.md) |  | 

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


## FilteringSetRules

> FilteringSetRules(ctx).SetRulesRequest(setRulesRequest).Execute()

Set user-defined filter rules

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
    setRulesRequest := *openapiclient.NewSetRulesRequest() // SetRulesRequest | Custom filtering rules. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringSetRules(context.Background()).SetRulesRequest(setRulesRequest).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringSetRules``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringSetRulesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRulesRequest** | [**SetRulesRequest**](SetRulesRequest.md) | Custom filtering rules. | 

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


## FilteringSetURL

> FilteringSetURL(ctx).FilterSetUrl(filterSetUrl).Execute()

Set URL parameters

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
    filterSetUrl := *openapiclient.NewFilterSetUrl() // FilterSetUrl |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FilteringApi.FilteringSetURL(context.Background()).FilterSetUrl(filterSetUrl).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringSetURL``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFilteringSetURLRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSetUrl** | [**FilterSetUrl**](FilterSetUrl.md) |  | 

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


## FilteringStatus

> FilterStatus FilteringStatus(ctx).Execute()

Get filtering parameters

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
    resp, r, err := apiClient.FilteringApi.FilteringStatus(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FilteringApi.FilteringStatus``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FilteringStatus`: FilterStatus
    fmt.Fprintf(os.Stdout, "Response from `FilteringApi.FilteringStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiFilteringStatusRequest struct via the builder pattern


### Return type

[**FilterStatus**](FilterStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

