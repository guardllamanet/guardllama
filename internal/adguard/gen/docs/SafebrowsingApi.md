# \SafebrowsingApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SafebrowsingDisable**](SafebrowsingApi.md#SafebrowsingDisable) | **Post** /safebrowsing/disable | Disable safebrowsing
[**SafebrowsingEnable**](SafebrowsingApi.md#SafebrowsingEnable) | **Post** /safebrowsing/enable | Enable safebrowsing
[**SafebrowsingStatus**](SafebrowsingApi.md#SafebrowsingStatus) | **Get** /safebrowsing/status | Get safebrowsing status



## SafebrowsingDisable

> SafebrowsingDisable(ctx).Execute()

Disable safebrowsing

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
    resp, r, err := apiClient.SafebrowsingApi.SafebrowsingDisable(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SafebrowsingApi.SafebrowsingDisable``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSafebrowsingDisableRequest struct via the builder pattern


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


## SafebrowsingEnable

> SafebrowsingEnable(ctx).Execute()

Enable safebrowsing

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
    resp, r, err := apiClient.SafebrowsingApi.SafebrowsingEnable(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SafebrowsingApi.SafebrowsingEnable``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSafebrowsingEnableRequest struct via the builder pattern


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


## SafebrowsingStatus

> SafebrowsingStatus200Response SafebrowsingStatus(ctx).Execute()

Get safebrowsing status

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
    resp, r, err := apiClient.SafebrowsingApi.SafebrowsingStatus(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SafebrowsingApi.SafebrowsingStatus``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SafebrowsingStatus`: SafebrowsingStatus200Response
    fmt.Fprintf(os.Stdout, "Response from `SafebrowsingApi.SafebrowsingStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSafebrowsingStatusRequest struct via the builder pattern


### Return type

[**SafebrowsingStatus200Response**](SafebrowsingStatus200Response.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

