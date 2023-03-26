# DhcpSearchResultStaticIP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Static** | Pointer to **string** | The result of determining static IP address.  | [optional] 
**Ip** | Pointer to **string** | Set if static&#x3D;no | [optional] 

## Methods

### NewDhcpSearchResultStaticIP

`func NewDhcpSearchResultStaticIP() *DhcpSearchResultStaticIP`

NewDhcpSearchResultStaticIP instantiates a new DhcpSearchResultStaticIP object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpSearchResultStaticIPWithDefaults

`func NewDhcpSearchResultStaticIPWithDefaults() *DhcpSearchResultStaticIP`

NewDhcpSearchResultStaticIPWithDefaults instantiates a new DhcpSearchResultStaticIP object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatic

`func (o *DhcpSearchResultStaticIP) GetStatic() string`

GetStatic returns the Static field if non-nil, zero value otherwise.

### GetStaticOk

`func (o *DhcpSearchResultStaticIP) GetStaticOk() (*string, bool)`

GetStaticOk returns a tuple with the Static field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatic

`func (o *DhcpSearchResultStaticIP) SetStatic(v string)`

SetStatic sets Static field to given value.

### HasStatic

`func (o *DhcpSearchResultStaticIP) HasStatic() bool`

HasStatic returns a boolean if a field has been set.

### GetIp

`func (o *DhcpSearchResultStaticIP) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *DhcpSearchResultStaticIP) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *DhcpSearchResultStaticIP) SetIp(v string)`

SetIp sets Ip field to given value.

### HasIp

`func (o *DhcpSearchResultStaticIP) HasIp() bool`

HasIp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


