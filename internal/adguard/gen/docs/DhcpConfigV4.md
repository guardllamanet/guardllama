# DhcpConfigV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GatewayIp** | Pointer to **string** |  | [optional] 
**SubnetMask** | Pointer to **string** |  | [optional] 
**RangeStart** | Pointer to **string** |  | [optional] 
**RangeEnd** | Pointer to **string** |  | [optional] 
**LeaseDuration** | Pointer to **int32** |  | [optional] 

## Methods

### NewDhcpConfigV4

`func NewDhcpConfigV4() *DhcpConfigV4`

NewDhcpConfigV4 instantiates a new DhcpConfigV4 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpConfigV4WithDefaults

`func NewDhcpConfigV4WithDefaults() *DhcpConfigV4`

NewDhcpConfigV4WithDefaults instantiates a new DhcpConfigV4 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGatewayIp

`func (o *DhcpConfigV4) GetGatewayIp() string`

GetGatewayIp returns the GatewayIp field if non-nil, zero value otherwise.

### GetGatewayIpOk

`func (o *DhcpConfigV4) GetGatewayIpOk() (*string, bool)`

GetGatewayIpOk returns a tuple with the GatewayIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGatewayIp

`func (o *DhcpConfigV4) SetGatewayIp(v string)`

SetGatewayIp sets GatewayIp field to given value.

### HasGatewayIp

`func (o *DhcpConfigV4) HasGatewayIp() bool`

HasGatewayIp returns a boolean if a field has been set.

### GetSubnetMask

`func (o *DhcpConfigV4) GetSubnetMask() string`

GetSubnetMask returns the SubnetMask field if non-nil, zero value otherwise.

### GetSubnetMaskOk

`func (o *DhcpConfigV4) GetSubnetMaskOk() (*string, bool)`

GetSubnetMaskOk returns a tuple with the SubnetMask field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubnetMask

`func (o *DhcpConfigV4) SetSubnetMask(v string)`

SetSubnetMask sets SubnetMask field to given value.

### HasSubnetMask

`func (o *DhcpConfigV4) HasSubnetMask() bool`

HasSubnetMask returns a boolean if a field has been set.

### GetRangeStart

`func (o *DhcpConfigV4) GetRangeStart() string`

GetRangeStart returns the RangeStart field if non-nil, zero value otherwise.

### GetRangeStartOk

`func (o *DhcpConfigV4) GetRangeStartOk() (*string, bool)`

GetRangeStartOk returns a tuple with the RangeStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRangeStart

`func (o *DhcpConfigV4) SetRangeStart(v string)`

SetRangeStart sets RangeStart field to given value.

### HasRangeStart

`func (o *DhcpConfigV4) HasRangeStart() bool`

HasRangeStart returns a boolean if a field has been set.

### GetRangeEnd

`func (o *DhcpConfigV4) GetRangeEnd() string`

GetRangeEnd returns the RangeEnd field if non-nil, zero value otherwise.

### GetRangeEndOk

`func (o *DhcpConfigV4) GetRangeEndOk() (*string, bool)`

GetRangeEndOk returns a tuple with the RangeEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRangeEnd

`func (o *DhcpConfigV4) SetRangeEnd(v string)`

SetRangeEnd sets RangeEnd field to given value.

### HasRangeEnd

`func (o *DhcpConfigV4) HasRangeEnd() bool`

HasRangeEnd returns a boolean if a field has been set.

### GetLeaseDuration

`func (o *DhcpConfigV4) GetLeaseDuration() int32`

GetLeaseDuration returns the LeaseDuration field if non-nil, zero value otherwise.

### GetLeaseDurationOk

`func (o *DhcpConfigV4) GetLeaseDurationOk() (*int32, bool)`

GetLeaseDurationOk returns a tuple with the LeaseDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLeaseDuration

`func (o *DhcpConfigV4) SetLeaseDuration(v int32)`

SetLeaseDuration sets LeaseDuration field to given value.

### HasLeaseDuration

`func (o *DhcpConfigV4) HasLeaseDuration() bool`

HasLeaseDuration returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


