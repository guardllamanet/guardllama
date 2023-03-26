# CheckConfigRequestInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | Pointer to **string** |  | [optional] 
**Port** | Pointer to **int32** |  | [optional] 
**Autofix** | Pointer to **bool** |  | [optional] 

## Methods

### NewCheckConfigRequestInfo

`func NewCheckConfigRequestInfo() *CheckConfigRequestInfo`

NewCheckConfigRequestInfo instantiates a new CheckConfigRequestInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigRequestInfoWithDefaults

`func NewCheckConfigRequestInfoWithDefaults() *CheckConfigRequestInfo`

NewCheckConfigRequestInfoWithDefaults instantiates a new CheckConfigRequestInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIp

`func (o *CheckConfigRequestInfo) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *CheckConfigRequestInfo) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *CheckConfigRequestInfo) SetIp(v string)`

SetIp sets Ip field to given value.

### HasIp

`func (o *CheckConfigRequestInfo) HasIp() bool`

HasIp returns a boolean if a field has been set.

### GetPort

`func (o *CheckConfigRequestInfo) GetPort() int32`

GetPort returns the Port field if non-nil, zero value otherwise.

### GetPortOk

`func (o *CheckConfigRequestInfo) GetPortOk() (*int32, bool)`

GetPortOk returns a tuple with the Port field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPort

`func (o *CheckConfigRequestInfo) SetPort(v int32)`

SetPort sets Port field to given value.

### HasPort

`func (o *CheckConfigRequestInfo) HasPort() bool`

HasPort returns a boolean if a field has been set.

### GetAutofix

`func (o *CheckConfigRequestInfo) GetAutofix() bool`

GetAutofix returns the Autofix field if non-nil, zero value otherwise.

### GetAutofixOk

`func (o *CheckConfigRequestInfo) GetAutofixOk() (*bool, bool)`

GetAutofixOk returns a tuple with the Autofix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAutofix

`func (o *CheckConfigRequestInfo) SetAutofix(v bool)`

SetAutofix sets Autofix field to given value.

### HasAutofix

`func (o *CheckConfigRequestInfo) HasAutofix() bool`

HasAutofix returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


