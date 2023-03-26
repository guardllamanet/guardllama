# Filter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool** |  | 
**Id** | **int64** |  | 
**LastUpdated** | Pointer to **time.Time** |  | [optional] 
**Name** | **string** |  | 
**RulesCount** | **int32** |  | 
**Url** | **string** |  | 

## Methods

### NewFilter

`func NewFilter(enabled bool, id int64, name string, rulesCount int32, url string, ) *Filter`

NewFilter instantiates a new Filter object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFilterWithDefaults

`func NewFilterWithDefaults() *Filter`

NewFilterWithDefaults instantiates a new Filter object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *Filter) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *Filter) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *Filter) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.


### GetId

`func (o *Filter) GetId() int64`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Filter) GetIdOk() (*int64, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Filter) SetId(v int64)`

SetId sets Id field to given value.


### GetLastUpdated

`func (o *Filter) GetLastUpdated() time.Time`

GetLastUpdated returns the LastUpdated field if non-nil, zero value otherwise.

### GetLastUpdatedOk

`func (o *Filter) GetLastUpdatedOk() (*time.Time, bool)`

GetLastUpdatedOk returns a tuple with the LastUpdated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUpdated

`func (o *Filter) SetLastUpdated(v time.Time)`

SetLastUpdated sets LastUpdated field to given value.

### HasLastUpdated

`func (o *Filter) HasLastUpdated() bool`

HasLastUpdated returns a boolean if a field has been set.

### GetName

`func (o *Filter) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Filter) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Filter) SetName(v string)`

SetName sets Name field to given value.


### GetRulesCount

`func (o *Filter) GetRulesCount() int32`

GetRulesCount returns the RulesCount field if non-nil, zero value otherwise.

### GetRulesCountOk

`func (o *Filter) GetRulesCountOk() (*int32, bool)`

GetRulesCountOk returns a tuple with the RulesCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRulesCount

`func (o *Filter) SetRulesCount(v int32)`

SetRulesCount sets RulesCount field to given value.


### GetUrl

`func (o *Filter) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *Filter) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *Filter) SetUrl(v string)`

SetUrl sets Url field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


