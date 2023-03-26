# DhcpSearchV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OtherServer** | Pointer to [**DhcpSearchResultOtherServer**](DhcpSearchResultOtherServer.md) |  | [optional] 
**StaticIp** | Pointer to [**DhcpSearchResultStaticIP**](DhcpSearchResultStaticIP.md) |  | [optional] 

## Methods

### NewDhcpSearchV4

`func NewDhcpSearchV4() *DhcpSearchV4`

NewDhcpSearchV4 instantiates a new DhcpSearchV4 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpSearchV4WithDefaults

`func NewDhcpSearchV4WithDefaults() *DhcpSearchV4`

NewDhcpSearchV4WithDefaults instantiates a new DhcpSearchV4 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOtherServer

`func (o *DhcpSearchV4) GetOtherServer() DhcpSearchResultOtherServer`

GetOtherServer returns the OtherServer field if non-nil, zero value otherwise.

### GetOtherServerOk

`func (o *DhcpSearchV4) GetOtherServerOk() (*DhcpSearchResultOtherServer, bool)`

GetOtherServerOk returns a tuple with the OtherServer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherServer

`func (o *DhcpSearchV4) SetOtherServer(v DhcpSearchResultOtherServer)`

SetOtherServer sets OtherServer field to given value.

### HasOtherServer

`func (o *DhcpSearchV4) HasOtherServer() bool`

HasOtherServer returns a boolean if a field has been set.

### GetStaticIp

`func (o *DhcpSearchV4) GetStaticIp() DhcpSearchResultStaticIP`

GetStaticIp returns the StaticIp field if non-nil, zero value otherwise.

### GetStaticIpOk

`func (o *DhcpSearchV4) GetStaticIpOk() (*DhcpSearchResultStaticIP, bool)`

GetStaticIpOk returns a tuple with the StaticIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStaticIp

`func (o *DhcpSearchV4) SetStaticIp(v DhcpSearchResultStaticIP)`

SetStaticIp sets StaticIp field to given value.

### HasStaticIp

`func (o *DhcpSearchV4) HasStaticIp() bool`

HasStaticIp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


