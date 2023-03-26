# AddressesInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsPort** | **int32** |  | 
**Interfaces** | [**map[string]NetInterface**](NetInterface.md) | Network interfaces dictionary, keys are interface names.  | 
**Version** | **string** |  | 
**WebPort** | **int32** |  | 

## Methods

### NewAddressesInfo

`func NewAddressesInfo(dnsPort int32, interfaces map[string]NetInterface, version string, webPort int32, ) *AddressesInfo`

NewAddressesInfo instantiates a new AddressesInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddressesInfoWithDefaults

`func NewAddressesInfoWithDefaults() *AddressesInfo`

NewAddressesInfoWithDefaults instantiates a new AddressesInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDnsPort

`func (o *AddressesInfo) GetDnsPort() int32`

GetDnsPort returns the DnsPort field if non-nil, zero value otherwise.

### GetDnsPortOk

`func (o *AddressesInfo) GetDnsPortOk() (*int32, bool)`

GetDnsPortOk returns a tuple with the DnsPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsPort

`func (o *AddressesInfo) SetDnsPort(v int32)`

SetDnsPort sets DnsPort field to given value.


### GetInterfaces

`func (o *AddressesInfo) GetInterfaces() map[string]NetInterface`

GetInterfaces returns the Interfaces field if non-nil, zero value otherwise.

### GetInterfacesOk

`func (o *AddressesInfo) GetInterfacesOk() (*map[string]NetInterface, bool)`

GetInterfacesOk returns a tuple with the Interfaces field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterfaces

`func (o *AddressesInfo) SetInterfaces(v map[string]NetInterface)`

SetInterfaces sets Interfaces field to given value.


### GetVersion

`func (o *AddressesInfo) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *AddressesInfo) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *AddressesInfo) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetWebPort

`func (o *AddressesInfo) GetWebPort() int32`

GetWebPort returns the WebPort field if non-nil, zero value otherwise.

### GetWebPortOk

`func (o *AddressesInfo) GetWebPortOk() (*int32, bool)`

GetWebPortOk returns a tuple with the WebPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebPort

`func (o *AddressesInfo) SetWebPort(v int32)`

SetWebPort sets WebPort field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


