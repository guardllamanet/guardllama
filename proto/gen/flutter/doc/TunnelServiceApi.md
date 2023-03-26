# guardllama_api.api.TunnelServiceApi

## Load the API package
```dart
import 'package:guardllama_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tunnelServiceCreateTunnel**](TunnelServiceApi.md#tunnelservicecreatetunnel) | **POST** /tunnels | 
[**tunnelServiceGetTunnel**](TunnelServiceApi.md#tunnelservicegettunnel) | **GET** /tunnels/{name} | 
[**tunnelServiceListTunnels**](TunnelServiceApi.md#tunnelservicelisttunnels) | **GET** /tunnels | 
[**tunnelServiceRemoveTunnel**](TunnelServiceApi.md#tunnelserviceremovetunnel) | **DELETE** /tunnels/{name} | 
[**tunnelServiceUpdateDNSBlockLists**](TunnelServiceApi.md#tunnelserviceupdatednsblocklists) | **PUT** /tunnels/{name}/dns_block_lists | 
[**tunnelServiceUpdateDNSFilteringEnabled**](TunnelServiceApi.md#tunnelserviceupdatednsfilteringenabled) | **PUT** /tunnels/{name}/dns_filtering_enabled | 
[**tunnelServiceUpdateDNSFilteringRules**](TunnelServiceApi.md#tunnelserviceupdatednsfilteringrules) | **PUT** /tunnels/{name}/dns_filtering_rules | 


# **tunnelServiceCreateTunnel**
> V1CreateTunnelResponse tunnelServiceCreateTunnel(body)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final V1CreateTunnelRequest body = ; // V1CreateTunnelRequest | 

try {
    final response = api.tunnelServiceCreateTunnel(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceCreateTunnel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1CreateTunnelRequest**](V1CreateTunnelRequest.md)|  | 

### Return type

[**V1CreateTunnelResponse**](V1CreateTunnelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceGetTunnel**
> V1GetTunnelResponse tunnelServiceGetTunnel(name)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final String name = name_example; // String | 

try {
    final response = api.tunnelServiceGetTunnel(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceGetTunnel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**V1GetTunnelResponse**](V1GetTunnelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceListTunnels**
> V1ListTunnelsResponse tunnelServiceListTunnels()



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();

try {
    final response = api.tunnelServiceListTunnels();
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceListTunnels: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1ListTunnelsResponse**](V1ListTunnelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceRemoveTunnel**
> JsonObject tunnelServiceRemoveTunnel(name)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final String name = name_example; // String | 

try {
    final response = api.tunnelServiceRemoveTunnel(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceRemoveTunnel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceUpdateDNSBlockLists**
> JsonObject tunnelServiceUpdateDNSBlockLists(name, body)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final String name = name_example; // String | 
final TunnelServiceUpdateDNSBlockListsRequest body = ; // TunnelServiceUpdateDNSBlockListsRequest | 

try {
    final response = api.tunnelServiceUpdateDNSBlockLists(name, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceUpdateDNSBlockLists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **body** | [**TunnelServiceUpdateDNSBlockListsRequest**](TunnelServiceUpdateDNSBlockListsRequest.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceUpdateDNSFilteringEnabled**
> JsonObject tunnelServiceUpdateDNSFilteringEnabled(name, body)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final String name = name_example; // String | 
final TunnelServiceUpdateDNSFilteringEnabledRequest body = ; // TunnelServiceUpdateDNSFilteringEnabledRequest | 

try {
    final response = api.tunnelServiceUpdateDNSFilteringEnabled(name, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceUpdateDNSFilteringEnabled: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **body** | [**TunnelServiceUpdateDNSFilteringEnabledRequest**](TunnelServiceUpdateDNSFilteringEnabledRequest.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tunnelServiceUpdateDNSFilteringRules**
> JsonObject tunnelServiceUpdateDNSFilteringRules(name, body)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getTunnelServiceApi();
final String name = name_example; // String | 
final TunnelServiceUpdateDNSFilteringRulesRequest body = ; // TunnelServiceUpdateDNSFilteringRulesRequest | 

try {
    final response = api.tunnelServiceUpdateDNSFilteringRules(name, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TunnelServiceApi->tunnelServiceUpdateDNSFilteringRules: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **body** | [**TunnelServiceUpdateDNSFilteringRulesRequest**](TunnelServiceUpdateDNSFilteringRulesRequest.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

