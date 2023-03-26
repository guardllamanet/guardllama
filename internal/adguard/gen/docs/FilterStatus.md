# FilterStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**Interval** | Pointer to **int32** |  | [optional] 
**Filters** | Pointer to [**[]Filter**](Filter.md) |  | [optional] 
**WhitelistFilters** | Pointer to [**[]Filter**](Filter.md) |  | [optional] 
**UserRules** | Pointer to **[]string** |  | [optional] 

## Methods

### NewFilterStatus

`func NewFilterStatus() *FilterStatus`

NewFilterStatus instantiates a new FilterStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFilterStatusWithDefaults

`func NewFilterStatusWithDefaults() *FilterStatus`

NewFilterStatusWithDefaults instantiates a new FilterStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *FilterStatus) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *FilterStatus) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *FilterStatus) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *FilterStatus) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetInterval

`func (o *FilterStatus) GetInterval() int32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *FilterStatus) GetIntervalOk() (*int32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *FilterStatus) SetInterval(v int32)`

SetInterval sets Interval field to given value.

### HasInterval

`func (o *FilterStatus) HasInterval() bool`

HasInterval returns a boolean if a field has been set.

### GetFilters

`func (o *FilterStatus) GetFilters() []Filter`

GetFilters returns the Filters field if non-nil, zero value otherwise.

### GetFiltersOk

`func (o *FilterStatus) GetFiltersOk() (*[]Filter, bool)`

GetFiltersOk returns a tuple with the Filters field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilters

`func (o *FilterStatus) SetFilters(v []Filter)`

SetFilters sets Filters field to given value.

### HasFilters

`func (o *FilterStatus) HasFilters() bool`

HasFilters returns a boolean if a field has been set.

### GetWhitelistFilters

`func (o *FilterStatus) GetWhitelistFilters() []Filter`

GetWhitelistFilters returns the WhitelistFilters field if non-nil, zero value otherwise.

### GetWhitelistFiltersOk

`func (o *FilterStatus) GetWhitelistFiltersOk() (*[]Filter, bool)`

GetWhitelistFiltersOk returns a tuple with the WhitelistFilters field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhitelistFilters

`func (o *FilterStatus) SetWhitelistFilters(v []Filter)`

SetWhitelistFilters sets WhitelistFilters field to given value.

### HasWhitelistFilters

`func (o *FilterStatus) HasWhitelistFilters() bool`

HasWhitelistFilters returns a boolean if a field has been set.

### GetUserRules

`func (o *FilterStatus) GetUserRules() []string`

GetUserRules returns the UserRules field if non-nil, zero value otherwise.

### GetUserRulesOk

`func (o *FilterStatus) GetUserRulesOk() (*[]string, bool)`

GetUserRulesOk returns a tuple with the UserRules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserRules

`func (o *FilterStatus) SetUserRules(v []string)`

SetUserRules sets UserRules field to given value.

### HasUserRules

`func (o *FilterStatus) HasUserRules() bool`

HasUserRules returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


