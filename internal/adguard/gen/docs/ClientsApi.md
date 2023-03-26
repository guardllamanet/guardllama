# \ClientsApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AccessList**](ClientsApi.md#AccessList) | **Get** /access/list | List (dis)allowed clients, blocked hosts, etc.
[**AccessSet**](ClientsApi.md#AccessSet) | **Post** /access/set | Set (dis)allowed clients, blocked hosts, etc.
[**ClientsAdd**](ClientsApi.md#ClientsAdd) | **Post** /clients/add | Add a new client
[**ClientsDelete**](ClientsApi.md#ClientsDelete) | **Post** /clients/delete | Remove a client
[**ClientsFind**](ClientsApi.md#ClientsFind) | **Get** /clients/find | Get information about clients by their IP addresses or ClientIDs. 
[**ClientsStatus**](ClientsApi.md#ClientsStatus) | **Get** /clients | Get information about configured clients
[**ClientsUpdate**](ClientsApi.md#ClientsUpdate) | **Post** /clients/update | Update client information



## AccessList

> AccessList AccessList(ctx).Execute()

List (dis)allowed clients, blocked hosts, etc.

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
    resp, r, err := apiClient.ClientsApi.AccessList(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.AccessList``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AccessList`: AccessList
    fmt.Fprintf(os.Stdout, "Response from `ClientsApi.AccessList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiAccessListRequest struct via the builder pattern


### Return type

[**AccessList**](AccessList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AccessSet

> AccessSet(ctx).Body(body).Execute()

Set (dis)allowed clients, blocked hosts, etc.

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
    body := AccessList(987) // AccessList | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ClientsApi.AccessSet(context.Background()).Body(body).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.AccessSet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAccessSetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AccessList** |  | 

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


## ClientsAdd

> ClientsAdd(ctx).Client(client).Execute()

Add a new client

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
    client := *openapiclient.NewClient() // Client | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ClientsApi.ClientsAdd(context.Background()).Client(client).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.ClientsAdd``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClientsAddRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | [**Client**](Client.md) |  | 

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


## ClientsDelete

> ClientsDelete(ctx).ClientDelete(clientDelete).Execute()

Remove a client

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
    clientDelete := *openapiclient.NewClientDelete() // ClientDelete | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ClientsApi.ClientsDelete(context.Background()).ClientDelete(clientDelete).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.ClientsDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClientsDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientDelete** | [**ClientDelete**](ClientDelete.md) |  | 

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


## ClientsFind

> []map[string]ClientFindSubEntry ClientsFind(ctx).Ip0(ip0).Execute()

Get information about clients by their IP addresses or ClientIDs. 

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
    ip0 := "ip0_example" // string | Filter by IP address or ClientIDs.  Parameters with names `ip1`, `ip2`, and so on are also accepted and interpreted as \"ip0 OR ip1 OR ip2\". TODO(a.garipov): Replace with a better query API.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ClientsApi.ClientsFind(context.Background()).Ip0(ip0).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.ClientsFind``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ClientsFind`: []map[string]ClientFindSubEntry
    fmt.Fprintf(os.Stdout, "Response from `ClientsApi.ClientsFind`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClientsFindRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ip0** | **string** | Filter by IP address or ClientIDs.  Parameters with names &#x60;ip1&#x60;, &#x60;ip2&#x60;, and so on are also accepted and interpreted as \&quot;ip0 OR ip1 OR ip2\&quot;. TODO(a.garipov): Replace with a better query API.  | 

### Return type

[**[]map[string]ClientFindSubEntry**](map.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClientsStatus

> Clients ClientsStatus(ctx).Execute()

Get information about configured clients

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
    resp, r, err := apiClient.ClientsApi.ClientsStatus(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.ClientsStatus``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ClientsStatus`: Clients
    fmt.Fprintf(os.Stdout, "Response from `ClientsApi.ClientsStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiClientsStatusRequest struct via the builder pattern


### Return type

[**Clients**](Clients.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ClientsUpdate

> ClientsUpdate(ctx).ClientUpdate(clientUpdate).Execute()

Update client information

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
    clientUpdate := *openapiclient.NewClientUpdate() // ClientUpdate | 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ClientsApi.ClientsUpdate(context.Background()).ClientUpdate(clientUpdate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ClientsApi.ClientsUpdate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiClientsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientUpdate** | [**ClientUpdate**](ClientUpdate.md) |  | 

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

