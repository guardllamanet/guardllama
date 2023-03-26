# CheckConfigRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dns** | Pointer to [**CheckConfigRequestInfo**](CheckConfigRequestInfo.md) |  | [optional] 
**Web** | Pointer to [**CheckConfigRequestInfo**](CheckConfigRequestInfo.md) |  | [optional] 
**SetStaticIp** | Pointer to **bool** |  | [optional] 

## Methods

### NewCheckConfigRequest

`func NewCheckConfigRequest() *CheckConfigRequest`

NewCheckConfigRequest instantiates a new CheckConfigRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigRequestWithDefaults

`func NewCheckConfigRequestWithDefaults() *CheckConfigRequest`

NewCheckConfigRequestWithDefaults instantiates a new CheckConfigRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDns

`func (o *CheckConfigRequest) GetDns() CheckConfigRequestInfo`

GetDns returns the Dns field if non-nil, zero value otherwise.

### GetDnsOk

`func (o *CheckConfigRequest) GetDnsOk() (*CheckConfigRequestInfo, bool)`

GetDnsOk returns a tuple with the Dns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDns

`func (o *CheckConfigRequest) SetDns(v CheckConfigRequestInfo)`

SetDns sets Dns field to given value.

### HasDns

`func (o *CheckConfigRequest) HasDns() bool`

HasDns returns a boolean if a field has been set.

### GetWeb

`func (o *CheckConfigRequest) GetWeb() CheckConfigRequestInfo`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *CheckConfigRequest) GetWebOk() (*CheckConfigRequestInfo, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *CheckConfigRequest) SetWeb(v CheckConfigRequestInfo)`

SetWeb sets Web field to given value.

### HasWeb

`func (o *CheckConfigRequest) HasWeb() bool`

HasWeb returns a boolean if a field has been set.

### GetSetStaticIp

`func (o *CheckConfigRequest) GetSetStaticIp() bool`

GetSetStaticIp returns the SetStaticIp field if non-nil, zero value otherwise.

### GetSetStaticIpOk

`func (o *CheckConfigRequest) GetSetStaticIpOk() (*bool, bool)`

GetSetStaticIpOk returns a tuple with the SetStaticIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSetStaticIp

`func (o *CheckConfigRequest) SetSetStaticIp(v bool)`

SetSetStaticIp sets SetStaticIp field to given value.

### HasSetStaticIp

`func (o *CheckConfigRequest) HasSetStaticIp() bool`

HasSetStaticIp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


