# NetInterface

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Flags** | **string** | Flags could be any combination of the following values, divided by the \&quot;|\&quot; character: \&quot;up\&quot;, \&quot;broadcast\&quot;, \&quot;loopback\&quot;, \&quot;pointtopoint\&quot; and \&quot;multicast\&quot;.  | 
**HardwareAddress** | **string** |  | 
**Name** | **string** |  | 
**IpAddresses** | Pointer to **[]string** |  | [optional] 
**Mtu** | **int32** |  | 

## Methods

### NewNetInterface

`func NewNetInterface(flags string, hardwareAddress string, name string, mtu int32, ) *NetInterface`

NewNetInterface instantiates a new NetInterface object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNetInterfaceWithDefaults

`func NewNetInterfaceWithDefaults() *NetInterface`

NewNetInterfaceWithDefaults instantiates a new NetInterface object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFlags

`func (o *NetInterface) GetFlags() string`

GetFlags returns the Flags field if non-nil, zero value otherwise.

### GetFlagsOk

`func (o *NetInterface) GetFlagsOk() (*string, bool)`

GetFlagsOk returns a tuple with the Flags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlags

`func (o *NetInterface) SetFlags(v string)`

SetFlags sets Flags field to given value.


### GetHardwareAddress

`func (o *NetInterface) GetHardwareAddress() string`

GetHardwareAddress returns the HardwareAddress field if non-nil, zero value otherwise.

### GetHardwareAddressOk

`func (o *NetInterface) GetHardwareAddressOk() (*string, bool)`

GetHardwareAddressOk returns a tuple with the HardwareAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHardwareAddress

`func (o *NetInterface) SetHardwareAddress(v string)`

SetHardwareAddress sets HardwareAddress field to given value.


### GetName

`func (o *NetInterface) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *NetInterface) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *NetInterface) SetName(v string)`

SetName sets Name field to given value.


### GetIpAddresses

`func (o *NetInterface) GetIpAddresses() []string`

GetIpAddresses returns the IpAddresses field if non-nil, zero value otherwise.

### GetIpAddressesOk

`func (o *NetInterface) GetIpAddressesOk() (*[]string, bool)`

GetIpAddressesOk returns a tuple with the IpAddresses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIpAddresses

`func (o *NetInterface) SetIpAddresses(v []string)`

SetIpAddresses sets IpAddresses field to given value.

### HasIpAddresses

`func (o *NetInterface) HasIpAddresses() bool`

HasIpAddresses returns a boolean if a field has been set.

### GetMtu

`func (o *NetInterface) GetMtu() int32`

GetMtu returns the Mtu field if non-nil, zero value otherwise.

### GetMtuOk

`func (o *NetInterface) GetMtuOk() (*int32, bool)`

GetMtuOk returns a tuple with the Mtu field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMtu

`func (o *NetInterface) SetMtu(v int32)`

SetMtu sets Mtu field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


