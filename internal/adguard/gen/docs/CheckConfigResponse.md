# CheckConfigResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dns** | [**CheckConfigResponseInfo**](CheckConfigResponseInfo.md) |  | 
**Web** | [**CheckConfigResponseInfo**](CheckConfigResponseInfo.md) |  | 
**StaticIp** | [**CheckConfigStaticIpInfo**](CheckConfigStaticIpInfo.md) |  | 

## Methods

### NewCheckConfigResponse

`func NewCheckConfigResponse(dns CheckConfigResponseInfo, web CheckConfigResponseInfo, staticIp CheckConfigStaticIpInfo, ) *CheckConfigResponse`

NewCheckConfigResponse instantiates a new CheckConfigResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigResponseWithDefaults

`func NewCheckConfigResponseWithDefaults() *CheckConfigResponse`

NewCheckConfigResponseWithDefaults instantiates a new CheckConfigResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDns

`func (o *CheckConfigResponse) GetDns() CheckConfigResponseInfo`

GetDns returns the Dns field if non-nil, zero value otherwise.

### GetDnsOk

`func (o *CheckConfigResponse) GetDnsOk() (*CheckConfigResponseInfo, bool)`

GetDnsOk returns a tuple with the Dns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDns

`func (o *CheckConfigResponse) SetDns(v CheckConfigResponseInfo)`

SetDns sets Dns field to given value.


### GetWeb

`func (o *CheckConfigResponse) GetWeb() CheckConfigResponseInfo`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *CheckConfigResponse) GetWebOk() (*CheckConfigResponseInfo, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *CheckConfigResponse) SetWeb(v CheckConfigResponseInfo)`

SetWeb sets Web field to given value.


### GetStaticIp

`func (o *CheckConfigResponse) GetStaticIp() CheckConfigStaticIpInfo`

GetStaticIp returns the StaticIp field if non-nil, zero value otherwise.

### GetStaticIpOk

`func (o *CheckConfigResponse) GetStaticIpOk() (*CheckConfigStaticIpInfo, bool)`

GetStaticIpOk returns a tuple with the StaticIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStaticIp

`func (o *CheckConfigResponse) SetStaticIp(v CheckConfigStaticIpInfo)`

SetStaticIp sets StaticIp field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


