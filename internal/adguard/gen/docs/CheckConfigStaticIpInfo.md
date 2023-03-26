# CheckConfigStaticIpInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Static** | Pointer to [**CheckConfigStaticIpInfoStatic**](CheckConfigStaticIpInfoStatic.md) |  | [optional] 
**Ip** | Pointer to **string** | Current dynamic IP address. Set if static&#x3D;no | [optional] [default to ""]
**Error** | Pointer to **string** | Error text. Set if static&#x3D;error | [optional] [default to ""]

## Methods

### NewCheckConfigStaticIpInfo

`func NewCheckConfigStaticIpInfo() *CheckConfigStaticIpInfo`

NewCheckConfigStaticIpInfo instantiates a new CheckConfigStaticIpInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigStaticIpInfoWithDefaults

`func NewCheckConfigStaticIpInfoWithDefaults() *CheckConfigStaticIpInfo`

NewCheckConfigStaticIpInfoWithDefaults instantiates a new CheckConfigStaticIpInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatic

`func (o *CheckConfigStaticIpInfo) GetStatic() CheckConfigStaticIpInfoStatic`

GetStatic returns the Static field if non-nil, zero value otherwise.

### GetStaticOk

`func (o *CheckConfigStaticIpInfo) GetStaticOk() (*CheckConfigStaticIpInfoStatic, bool)`

GetStaticOk returns a tuple with the Static field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatic

`func (o *CheckConfigStaticIpInfo) SetStatic(v CheckConfigStaticIpInfoStatic)`

SetStatic sets Static field to given value.

### HasStatic

`func (o *CheckConfigStaticIpInfo) HasStatic() bool`

HasStatic returns a boolean if a field has been set.

### GetIp

`func (o *CheckConfigStaticIpInfo) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *CheckConfigStaticIpInfo) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *CheckConfigStaticIpInfo) SetIp(v string)`

SetIp sets Ip field to given value.

### HasIp

`func (o *CheckConfigStaticIpInfo) HasIp() bool`

HasIp returns a boolean if a field has been set.

### GetError

`func (o *CheckConfigStaticIpInfo) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *CheckConfigStaticIpInfo) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *CheckConfigStaticIpInfo) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *CheckConfigStaticIpInfo) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


