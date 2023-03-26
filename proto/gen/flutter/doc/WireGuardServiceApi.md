# guardllama_api.api.WireGuardServiceApi

## Load the API package
```dart
import 'package:guardllama_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wireGuardServiceGetWireGuardDevice**](WireGuardServiceApi.md#wireguardservicegetwireguarddevice) | **GET** /device | 


# **wireGuardServiceGetWireGuardDevice**
> V1GetWireGuardDeviceResponse wireGuardServiceGetWireGuardDevice()



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getWireGuardServiceApi();

try {
    final response = api.wireGuardServiceGetWireGuardDevice();
    print(response);
} catch on DioError (e) {
    print('Exception when calling WireGuardServiceApi->wireGuardServiceGetWireGuardDevice: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1GetWireGuardDeviceResponse**](V1GetWireGuardDeviceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

