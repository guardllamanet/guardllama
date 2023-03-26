# DhcpStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**InterfaceName** | Pointer to **string** |  | [optional] 
**V4** | Pointer to [**DhcpConfigV4**](DhcpConfigV4.md) |  | [optional] 
**V6** | Pointer to [**DhcpConfigV6**](DhcpConfigV6.md) |  | [optional] 
**Leases** | [**[]DhcpLease**](DhcpLease.md) |  | 
**StaticLeases** | Pointer to [**[]DhcpStaticLease**](DhcpStaticLease.md) |  | [optional] 

## Methods

### NewDhcpStatus

`func NewDhcpStatus(leases []DhcpLease, ) *DhcpStatus`

NewDhcpStatus instantiates a new DhcpStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpStatusWithDefaults

`func NewDhcpStatusWithDefaults() *DhcpStatus`

NewDhcpStatusWithDefaults instantiates a new DhcpStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *DhcpStatus) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *DhcpStatus) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *DhcpStatus) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *DhcpStatus) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetInterfaceName

`func (o *DhcpStatus) GetInterfaceName() string`

GetInterfaceName returns the InterfaceName field if non-nil, zero value otherwise.

### GetInterfaceNameOk

`func (o *DhcpStatus) GetInterfaceNameOk() (*string, bool)`

GetInterfaceNameOk returns a tuple with the InterfaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterfaceName

`func (o *DhcpStatus) SetInterfaceName(v string)`

SetInterfaceName sets InterfaceName field to given value.

### HasInterfaceName

`func (o *DhcpStatus) HasInterfaceName() bool`

HasInterfaceName returns a boolean if a field has been set.

### GetV4

`func (o *DhcpStatus) GetV4() DhcpConfigV4`

GetV4 returns the V4 field if non-nil, zero value otherwise.

### GetV4Ok

`func (o *DhcpStatus) GetV4Ok() (*DhcpConfigV4, bool)`

GetV4Ok returns a tuple with the V4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV4

`func (o *DhcpStatus) SetV4(v DhcpConfigV4)`

SetV4 sets V4 field to given value.

### HasV4

`func (o *DhcpStatus) HasV4() bool`

HasV4 returns a boolean if a field has been set.

### GetV6

`func (o *DhcpStatus) GetV6() DhcpConfigV6`

GetV6 returns the V6 field if non-nil, zero value otherwise.

### GetV6Ok

`func (o *DhcpStatus) GetV6Ok() (*DhcpConfigV6, bool)`

GetV6Ok returns a tuple with the V6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV6

`func (o *DhcpStatus) SetV6(v DhcpConfigV6)`

SetV6 sets V6 field to given value.

### HasV6

`func (o *DhcpStatus) HasV6() bool`

HasV6 returns a boolean if a field has been set.

### GetLeases

`func (o *DhcpStatus) GetLeases() []DhcpLease`

GetLeases returns the Leases field if non-nil, zero value otherwise.

### GetLeasesOk

`func (o *DhcpStatus) GetLeasesOk() (*[]DhcpLease, bool)`

GetLeasesOk returns a tuple with the Leases field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLeases

`func (o *DhcpStatus) SetLeases(v []DhcpLease)`

SetLeases sets Leases field to given value.


### GetStaticLeases

`func (o *DhcpStatus) GetStaticLeases() []DhcpStaticLease`

GetStaticLeases returns the StaticLeases field if non-nil, zero value otherwise.

### GetStaticLeasesOk

`func (o *DhcpStatus) GetStaticLeasesOk() (*[]DhcpStaticLease, bool)`

GetStaticLeasesOk returns a tuple with the StaticLeases field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStaticLeases

`func (o *DhcpStatus) SetStaticLeases(v []DhcpStaticLease)`

SetStaticLeases sets StaticLeases field to given value.

### HasStaticLeases

`func (o *DhcpStatus) HasStaticLeases() bool`

HasStaticLeases returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


