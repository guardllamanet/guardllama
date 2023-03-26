# AddUrlRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** | URL or an absolute path to the file containing filtering rules.  | [optional] 
**Whitelist** | Pointer to **bool** |  | [optional] 

## Methods

### NewAddUrlRequest

`func NewAddUrlRequest() *AddUrlRequest`

NewAddUrlRequest instantiates a new AddUrlRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddUrlRequestWithDefaults

`func NewAddUrlRequestWithDefaults() *AddUrlRequest`

NewAddUrlRequestWithDefaults instantiates a new AddUrlRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AddUrlRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AddUrlRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AddUrlRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AddUrlRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetUrl

`func (o *AddUrlRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *AddUrlRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *AddUrlRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *AddUrlRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetWhitelist

`func (o *AddUrlRequest) GetWhitelist() bool`

GetWhitelist returns the Whitelist field if non-nil, zero value otherwise.

### GetWhitelistOk

`func (o *AddUrlRequest) GetWhitelistOk() (*bool, bool)`

GetWhitelistOk returns a tuple with the Whitelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhitelist

`func (o *AddUrlRequest) SetWhitelist(v bool)`

SetWhitelist sets Whitelist field to given value.

### HasWhitelist

`func (o *AddUrlRequest) HasWhitelist() bool`

HasWhitelist returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


