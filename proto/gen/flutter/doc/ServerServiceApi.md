# guardllama_api.api.ServerServiceApi

## Load the API package
```dart
import 'package:guardllama_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serverServiceGetServer**](ServerServiceApi.md#serverservicegetserver) | **GET** /server | 
[**serverServiceGetServerConfig**](ServerServiceApi.md#serverservicegetserverconfig) | **GET** /server/config | 


# **serverServiceGetServer**
> V1GetServerResponse serverServiceGetServer()



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getServerServiceApi();

try {
    final response = api.serverServiceGetServer();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ServerServiceApi->serverServiceGetServer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1GetServerResponse**](V1GetServerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serverServiceGetServerConfig**
> V1GetServerConfigResponse serverServiceGetServerConfig()



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getServerServiceApi();

try {
    final response = api.serverServiceGetServerConfig();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ServerServiceApi->serverServiceGetServerConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1GetServerConfigResponse**](V1GetServerConfigResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

