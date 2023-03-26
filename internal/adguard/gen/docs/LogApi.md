# \LogApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**QueryLog**](LogApi.md#QueryLog) | **Get** /querylog | Get DNS server query log.
[**QueryLogConfig**](LogApi.md#QueryLogConfig) | **Post** /querylog_config | Set query log parameters
[**QueryLogInfo**](LogApi.md#QueryLogInfo) | **Get** /querylog_info | Get query log parameters
[**QuerylogClear**](LogApi.md#QuerylogClear) | **Post** /querylog_clear | Clear query log



## QueryLog

> QueryLog QueryLog(ctx).OlderThan(olderThan).Offset(offset).Limit(limit).Search(search).ResponseStatus(responseStatus).Execute()

Get DNS server query log.

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
    olderThan := "olderThan_example" // string | Filter by older than (optional)
    offset := int32(56) // int32 | Specify the ranking number of the first item on the page.  Even though it is possible to use \"offset\" and \"older_than\", we recommend choosing one of them and sticking to it.  (optional)
    limit := int32(56) // int32 | Limit the number of records to be returned (optional)
    search := "search_example" // string | Filter by domain name or client IP (optional)
    responseStatus := "responseStatus_example" // string | Filter by response status (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.LogApi.QueryLog(context.Background()).OlderThan(olderThan).Offset(offset).Limit(limit).Search(search).ResponseStatus(responseStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogApi.QueryLog``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `QueryLog`: QueryLog
    fmt.Fprintf(os.Stdout, "Response from `LogApi.QueryLog`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiQueryLogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **olderThan** | **string** | Filter by older than | 
 **offset** | **int32** | Specify the ranking number of the first item on the page.  Even though it is possible to use \&quot;offset\&quot; and \&quot;older_than\&quot;, we recommend choosing one of them and sticking to it.  | 
 **limit** | **int32** | Limit the number of records to be returned | 
 **search** | **string** | Filter by domain name or client IP | 
 **responseStatus** | **string** | Filter by response status | 

### Return type

[**QueryLog**](QueryLog.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QueryLogConfig

> QueryLogConfig(ctx).QueryLogConfig(queryLogConfig).Execute()

Set query log parameters

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
    queryLogConfig := *openapiclient.NewQueryLogConfig() // QueryLogConfig |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.LogApi.QueryLogConfig(context.Background()).QueryLogConfig(queryLogConfig).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogApi.QueryLogConfig``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiQueryLogConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queryLogConfig** | [**QueryLogConfig**](QueryLogConfig.md) |  | 

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


## QueryLogInfo

> QueryLogConfig QueryLogInfo(ctx).Execute()

Get query log parameters

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
    resp, r, err := apiClient.LogApi.QueryLogInfo(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogApi.QueryLogInfo``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `QueryLogInfo`: QueryLogConfig
    fmt.Fprintf(os.Stdout, "Response from `LogApi.QueryLogInfo`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiQueryLogInfoRequest struct via the builder pattern


### Return type

[**QueryLogConfig**](QueryLogConfig.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuerylogClear

> QuerylogClear(ctx).Execute()

Clear query log

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
    resp, r, err := apiClient.LogApi.QuerylogClear(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogApi.QuerylogClear``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiQuerylogClearRequest struct via the builder pattern


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

