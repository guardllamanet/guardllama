# FilterSetUrl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**FilterSetUrlData**](FilterSetUrlData.md) |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Whitelist** | Pointer to **bool** |  | [optional] 

## Methods

### NewFilterSetUrl

`func NewFilterSetUrl() *FilterSetUrl`

NewFilterSetUrl instantiates a new FilterSetUrl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFilterSetUrlWithDefaults

`func NewFilterSetUrlWithDefaults() *FilterSetUrl`

NewFilterSetUrlWithDefaults instantiates a new FilterSetUrl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *FilterSetUrl) GetData() FilterSetUrlData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *FilterSetUrl) GetDataOk() (*FilterSetUrlData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *FilterSetUrl) SetData(v FilterSetUrlData)`

SetData sets Data field to given value.

### HasData

`func (o *FilterSetUrl) HasData() bool`

HasData returns a boolean if a field has been set.

### GetUrl

`func (o *FilterSetUrl) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *FilterSetUrl) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *FilterSetUrl) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *FilterSetUrl) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetWhitelist

`func (o *FilterSetUrl) GetWhitelist() bool`

GetWhitelist returns the Whitelist field if non-nil, zero value otherwise.

### GetWhitelistOk

`func (o *FilterSetUrl) GetWhitelistOk() (*bool, bool)`

GetWhitelistOk returns a tuple with the Whitelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhitelist

`func (o *FilterSetUrl) SetWhitelist(v bool)`

SetWhitelist sets Whitelist field to given value.

### HasWhitelist

`func (o *FilterSetUrl) HasWhitelist() bool`

HasWhitelist returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


