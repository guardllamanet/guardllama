# RemoveUrlRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | Pointer to **string** | Previously added URL containing filtering rules | [optional] 
**Whitelist** | Pointer to **bool** |  | [optional] 

## Methods

### NewRemoveUrlRequest

`func NewRemoveUrlRequest() *RemoveUrlRequest`

NewRemoveUrlRequest instantiates a new RemoveUrlRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRemoveUrlRequestWithDefaults

`func NewRemoveUrlRequestWithDefaults() *RemoveUrlRequest`

NewRemoveUrlRequestWithDefaults instantiates a new RemoveUrlRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *RemoveUrlRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *RemoveUrlRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *RemoveUrlRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *RemoveUrlRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetWhitelist

`func (o *RemoveUrlRequest) GetWhitelist() bool`

GetWhitelist returns the Whitelist field if non-nil, zero value otherwise.

### GetWhitelistOk

`func (o *RemoveUrlRequest) GetWhitelistOk() (*bool, bool)`

GetWhitelistOk returns a tuple with the Whitelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhitelist

`func (o *RemoveUrlRequest) SetWhitelist(v bool)`

SetWhitelist sets Whitelist field to given value.

### HasWhitelist

`func (o *RemoveUrlRequest) HasWhitelist() bool`

HasWhitelist returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


