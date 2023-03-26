# CheckConfigRequestBeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dns** | Pointer to [**CheckConfigRequestInfoBeta**](CheckConfigRequestInfoBeta.md) |  | [optional] 
**Web** | Pointer to [**CheckConfigRequestInfoBeta**](CheckConfigRequestInfoBeta.md) |  | [optional] 
**SetStaticIp** | Pointer to **bool** |  | [optional] 

## Methods

### NewCheckConfigRequestBeta

`func NewCheckConfigRequestBeta() *CheckConfigRequestBeta`

NewCheckConfigRequestBeta instantiates a new CheckConfigRequestBeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigRequestBetaWithDefaults

`func NewCheckConfigRequestBetaWithDefaults() *CheckConfigRequestBeta`

NewCheckConfigRequestBetaWithDefaults instantiates a new CheckConfigRequestBeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDns

`func (o *CheckConfigRequestBeta) GetDns() CheckConfigRequestInfoBeta`

GetDns returns the Dns field if non-nil, zero value otherwise.

### GetDnsOk

`func (o *CheckConfigRequestBeta) GetDnsOk() (*CheckConfigRequestInfoBeta, bool)`

GetDnsOk returns a tuple with the Dns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDns

`func (o *CheckConfigRequestBeta) SetDns(v CheckConfigRequestInfoBeta)`

SetDns sets Dns field to given value.

### HasDns

`func (o *CheckConfigRequestBeta) HasDns() bool`

HasDns returns a boolean if a field has been set.

### GetWeb

`func (o *CheckConfigRequestBeta) GetWeb() CheckConfigRequestInfoBeta`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *CheckConfigRequestBeta) GetWebOk() (*CheckConfigRequestInfoBeta, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *CheckConfigRequestBeta) SetWeb(v CheckConfigRequestInfoBeta)`

SetWeb sets Web field to given value.

### HasWeb

`func (o *CheckConfigRequestBeta) HasWeb() bool`

HasWeb returns a boolean if a field has been set.

### GetSetStaticIp

`func (o *CheckConfigRequestBeta) GetSetStaticIp() bool`

GetSetStaticIp returns the SetStaticIp field if non-nil, zero value otherwise.

### GetSetStaticIpOk

`func (o *CheckConfigRequestBeta) GetSetStaticIpOk() (*bool, bool)`

GetSetStaticIpOk returns a tuple with the SetStaticIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSetStaticIp

`func (o *CheckConfigRequestBeta) SetSetStaticIp(v bool)`

SetSetStaticIp sets SetStaticIp field to given value.

### HasSetStaticIp

`func (o *CheckConfigRequestBeta) HasSetStaticIp() bool`

HasSetStaticIp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


