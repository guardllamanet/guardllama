# AddressesInfoBeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsPort** | **int32** |  | 
**WebPort** | **int32** |  | 
**Interfaces** | [**[]NetInterface**](NetInterface.md) | Network interfaces dictionary, keys are interface names.  | 

## Methods

### NewAddressesInfoBeta

`func NewAddressesInfoBeta(dnsPort int32, webPort int32, interfaces []NetInterface, ) *AddressesInfoBeta`

NewAddressesInfoBeta instantiates a new AddressesInfoBeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddressesInfoBetaWithDefaults

`func NewAddressesInfoBetaWithDefaults() *AddressesInfoBeta`

NewAddressesInfoBetaWithDefaults instantiates a new AddressesInfoBeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDnsPort

`func (o *AddressesInfoBeta) GetDnsPort() int32`

GetDnsPort returns the DnsPort field if non-nil, zero value otherwise.

### GetDnsPortOk

`func (o *AddressesInfoBeta) GetDnsPortOk() (*int32, bool)`

GetDnsPortOk returns a tuple with the DnsPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsPort

`func (o *AddressesInfoBeta) SetDnsPort(v int32)`

SetDnsPort sets DnsPort field to given value.


### GetWebPort

`func (o *AddressesInfoBeta) GetWebPort() int32`

GetWebPort returns the WebPort field if non-nil, zero value otherwise.

### GetWebPortOk

`func (o *AddressesInfoBeta) GetWebPortOk() (*int32, bool)`

GetWebPortOk returns a tuple with the WebPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebPort

`func (o *AddressesInfoBeta) SetWebPort(v int32)`

SetWebPort sets WebPort field to given value.


### GetInterfaces

`func (o *AddressesInfoBeta) GetInterfaces() []NetInterface`

GetInterfaces returns the Interfaces field if non-nil, zero value otherwise.

### GetInterfacesOk

`func (o *AddressesInfoBeta) GetInterfacesOk() (*[]NetInterface, bool)`

GetInterfacesOk returns a tuple with the Interfaces field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterfaces

`func (o *AddressesInfoBeta) SetInterfaces(v []NetInterface)`

SetInterfaces sets Interfaces field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


