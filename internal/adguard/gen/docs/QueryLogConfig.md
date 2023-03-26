# QueryLogConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** | Is query log enabled | [optional] 
**Interval** | Pointer to **float32** | Time period for query log rotation.  | [optional] 
**AnonymizeClientIp** | Pointer to **bool** | Anonymize clients&#39; IP addresses | [optional] 

## Methods

### NewQueryLogConfig

`func NewQueryLogConfig() *QueryLogConfig`

NewQueryLogConfig instantiates a new QueryLogConfig object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueryLogConfigWithDefaults

`func NewQueryLogConfigWithDefaults() *QueryLogConfig`

NewQueryLogConfigWithDefaults instantiates a new QueryLogConfig object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *QueryLogConfig) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *QueryLogConfig) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *QueryLogConfig) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *QueryLogConfig) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetInterval

`func (o *QueryLogConfig) GetInterval() float32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *QueryLogConfig) GetIntervalOk() (*float32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *QueryLogConfig) SetInterval(v float32)`

SetInterval sets Interval field to given value.

### HasInterval

`func (o *QueryLogConfig) HasInterval() bool`

HasInterval returns a boolean if a field has been set.

### GetAnonymizeClientIp

`func (o *QueryLogConfig) GetAnonymizeClientIp() bool`

GetAnonymizeClientIp returns the AnonymizeClientIp field if non-nil, zero value otherwise.

### GetAnonymizeClientIpOk

`func (o *QueryLogConfig) GetAnonymizeClientIpOk() (*bool, bool)`

GetAnonymizeClientIpOk returns a tuple with the AnonymizeClientIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnonymizeClientIp

`func (o *QueryLogConfig) SetAnonymizeClientIp(v bool)`

SetAnonymizeClientIp sets AnonymizeClientIp field to given value.

### HasAnonymizeClientIp

`func (o *QueryLogConfig) HasAnonymizeClientIp() bool`

HasAnonymizeClientIp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


