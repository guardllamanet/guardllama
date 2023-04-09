# guardllama_api.api.AuthServiceApi

## Load the API package
```dart
import 'package:guardllama_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authServiceAuthenticate**](AuthServiceApi.md#authserviceauthenticate) | **POST** /authenticate | 


# **authServiceAuthenticate**
> V1AuthenticateResponse authServiceAuthenticate(body)



### Example
```dart
import 'package:guardllama_api/api.dart';

final api = GuardllamaApi().getAuthServiceApi();
final V1AuthenticateRequest body = ; // V1AuthenticateRequest | 

try {
    final response = api.authServiceAuthenticate(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthServiceApi->authServiceAuthenticate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1AuthenticateRequest**](V1AuthenticateRequest.md)|  | 

### Return type

[**V1AuthenticateResponse**](V1AuthenticateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

