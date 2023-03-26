# StatsConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Interval** | Pointer to **int32** | Time period to keep the data.  &#x60;0&#x60; means that the statistics is disabled.  | [optional] 

## Methods

### NewStatsConfig

`func NewStatsConfig() *StatsConfig`

NewStatsConfig instantiates a new StatsConfig object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStatsConfigWithDefaults

`func NewStatsConfigWithDefaults() *StatsConfig`

NewStatsConfigWithDefaults instantiates a new StatsConfig object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInterval

`func (o *StatsConfig) GetInterval() int32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *StatsConfig) GetIntervalOk() (*int32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *StatsConfig) SetInterval(v int32)`

SetInterval sets Interval field to given value.

### HasInterval

`func (o *StatsConfig) HasInterval() bool`

HasInterval returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


