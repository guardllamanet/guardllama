# DhcpConfigV6

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RangeStart** | Pointer to **string** |  | [optional] 
**LeaseDuration** | Pointer to **int32** |  | [optional] 

## Methods

### NewDhcpConfigV6

`func NewDhcpConfigV6() *DhcpConfigV6`

NewDhcpConfigV6 instantiates a new DhcpConfigV6 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpConfigV6WithDefaults

`func NewDhcpConfigV6WithDefaults() *DhcpConfigV6`

NewDhcpConfigV6WithDefaults instantiates a new DhcpConfigV6 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRangeStart

`func (o *DhcpConfigV6) GetRangeStart() string`

GetRangeStart returns the RangeStart field if non-nil, zero value otherwise.

### GetRangeStartOk

`func (o *DhcpConfigV6) GetRangeStartOk() (*string, bool)`

GetRangeStartOk returns a tuple with the RangeStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRangeStart

`func (o *DhcpConfigV6) SetRangeStart(v string)`

SetRangeStart sets RangeStart field to given value.

### HasRangeStart

`func (o *DhcpConfigV6) HasRangeStart() bool`

HasRangeStart returns a boolean if a field has been set.

### GetLeaseDuration

`func (o *DhcpConfigV6) GetLeaseDuration() int32`

GetLeaseDuration returns the LeaseDuration field if non-nil, zero value otherwise.

### GetLeaseDurationOk

`func (o *DhcpConfigV6) GetLeaseDurationOk() (*int32, bool)`

GetLeaseDurationOk returns a tuple with the LeaseDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLeaseDuration

`func (o *DhcpConfigV6) SetLeaseDuration(v int32)`

SetLeaseDuration sets LeaseDuration field to given value.

### HasLeaseDuration

`func (o *DhcpConfigV6) HasLeaseDuration() bool`

HasLeaseDuration returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


