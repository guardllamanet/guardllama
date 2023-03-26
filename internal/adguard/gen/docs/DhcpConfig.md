# DhcpConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**InterfaceName** | Pointer to **string** |  | [optional] 
**V4** | Pointer to [**DhcpConfigV4**](DhcpConfigV4.md) |  | [optional] 
**V6** | Pointer to [**DhcpConfigV6**](DhcpConfigV6.md) |  | [optional] 

## Methods

### NewDhcpConfig

`func NewDhcpConfig() *DhcpConfig`

NewDhcpConfig instantiates a new DhcpConfig object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpConfigWithDefaults

`func NewDhcpConfigWithDefaults() *DhcpConfig`

NewDhcpConfigWithDefaults instantiates a new DhcpConfig object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *DhcpConfig) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *DhcpConfig) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *DhcpConfig) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *DhcpConfig) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetInterfaceName

`func (o *DhcpConfig) GetInterfaceName() string`

GetInterfaceName returns the InterfaceName field if non-nil, zero value otherwise.

### GetInterfaceNameOk

`func (o *DhcpConfig) GetInterfaceNameOk() (*string, bool)`

GetInterfaceNameOk returns a tuple with the InterfaceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterfaceName

`func (o *DhcpConfig) SetInterfaceName(v string)`

SetInterfaceName sets InterfaceName field to given value.

### HasInterfaceName

`func (o *DhcpConfig) HasInterfaceName() bool`

HasInterfaceName returns a boolean if a field has been set.

### GetV4

`func (o *DhcpConfig) GetV4() DhcpConfigV4`

GetV4 returns the V4 field if non-nil, zero value otherwise.

### GetV4Ok

`func (o *DhcpConfig) GetV4Ok() (*DhcpConfigV4, bool)`

GetV4Ok returns a tuple with the V4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV4

`func (o *DhcpConfig) SetV4(v DhcpConfigV4)`

SetV4 sets V4 field to given value.

### HasV4

`func (o *DhcpConfig) HasV4() bool`

HasV4 returns a boolean if a field has been set.

### GetV6

`func (o *DhcpConfig) GetV6() DhcpConfigV6`

GetV6 returns the V6 field if non-nil, zero value otherwise.

### GetV6Ok

`func (o *DhcpConfig) GetV6Ok() (*DhcpConfigV6, bool)`

GetV6Ok returns a tuple with the V6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV6

`func (o *DhcpConfig) SetV6(v DhcpConfigV6)`

SetV6 sets V6 field to given value.

### HasV6

`func (o *DhcpConfig) HasV6() bool`

HasV6 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


