# \I18nApi

All URIs are relative to */control*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChangeLanguage**](I18nApi.md#ChangeLanguage) | **Post** /i18n/change_language | Change current language.  Argument must be an ISO 639-1 two-letter code. 
[**CurrentLanguage**](I18nApi.md#CurrentLanguage) | **Get** /i18n/current_language | Get currently set language.  Result is ISO 639-1 two-letter code.  Empty result means default language. 



## ChangeLanguage

> ChangeLanguage(ctx).LanguageSettings(languageSettings).Execute()

Change current language.  Argument must be an ISO 639-1 two-letter code. 



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
    languageSettings := *openapiclient.NewLanguageSettings("Language_example") // LanguageSettings | New language.  It must be known to the server and must be an ISO 639-1 two-letter code.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.I18nApi.ChangeLanguage(context.Background()).LanguageSettings(languageSettings).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `I18nApi.ChangeLanguage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiChangeLanguageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageSettings** | [**LanguageSettings**](LanguageSettings.md) | New language.  It must be known to the server and must be an ISO 639-1 two-letter code.  | 

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


## CurrentLanguage

> LanguageSettings CurrentLanguage(ctx).Execute()

Get currently set language.  Result is ISO 639-1 two-letter code.  Empty result means default language. 



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
    resp, r, err := apiClient.I18nApi.CurrentLanguage(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `I18nApi.CurrentLanguage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CurrentLanguage`: LanguageSettings
    fmt.Fprintf(os.Stdout, "Response from `I18nApi.CurrentLanguage`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCurrentLanguageRequest struct via the builder pattern


### Return type

[**LanguageSettings**](LanguageSettings.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

