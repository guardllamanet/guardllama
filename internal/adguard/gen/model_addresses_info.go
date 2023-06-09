/*
AdGuard Home

AdGuard Home REST-ish API.  Our admin web interface is built on top of this REST-ish API. 

API version: 0.107
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package adguard

import (
	"encoding/json"
)

// AddressesInfo AdGuard Home addresses configuration
type AddressesInfo struct {
	DnsPort int32 `json:"dns_port"`
	// Network interfaces dictionary, keys are interface names. 
	Interfaces map[string]NetInterface `json:"interfaces"`
	Version string `json:"version"`
	WebPort int32 `json:"web_port"`
}

// NewAddressesInfo instantiates a new AddressesInfo object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAddressesInfo(dnsPort int32, interfaces map[string]NetInterface, version string, webPort int32) *AddressesInfo {
	this := AddressesInfo{}
	this.DnsPort = dnsPort
	this.Interfaces = interfaces
	this.Version = version
	this.WebPort = webPort
	return &this
}

// NewAddressesInfoWithDefaults instantiates a new AddressesInfo object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAddressesInfoWithDefaults() *AddressesInfo {
	this := AddressesInfo{}
	return &this
}

// GetDnsPort returns the DnsPort field value
func (o *AddressesInfo) GetDnsPort() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.DnsPort
}

// GetDnsPortOk returns a tuple with the DnsPort field value
// and a boolean to check if the value has been set.
func (o *AddressesInfo) GetDnsPortOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.DnsPort, true
}

// SetDnsPort sets field value
func (o *AddressesInfo) SetDnsPort(v int32) {
	o.DnsPort = v
}

// GetInterfaces returns the Interfaces field value
func (o *AddressesInfo) GetInterfaces() map[string]NetInterface {
	if o == nil {
		var ret map[string]NetInterface
		return ret
	}

	return o.Interfaces
}

// GetInterfacesOk returns a tuple with the Interfaces field value
// and a boolean to check if the value has been set.
func (o *AddressesInfo) GetInterfacesOk() (*map[string]NetInterface, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Interfaces, true
}

// SetInterfaces sets field value
func (o *AddressesInfo) SetInterfaces(v map[string]NetInterface) {
	o.Interfaces = v
}

// GetVersion returns the Version field value
func (o *AddressesInfo) GetVersion() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Version
}

// GetVersionOk returns a tuple with the Version field value
// and a boolean to check if the value has been set.
func (o *AddressesInfo) GetVersionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Version, true
}

// SetVersion sets field value
func (o *AddressesInfo) SetVersion(v string) {
	o.Version = v
}

// GetWebPort returns the WebPort field value
func (o *AddressesInfo) GetWebPort() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.WebPort
}

// GetWebPortOk returns a tuple with the WebPort field value
// and a boolean to check if the value has been set.
func (o *AddressesInfo) GetWebPortOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.WebPort, true
}

// SetWebPort sets field value
func (o *AddressesInfo) SetWebPort(v int32) {
	o.WebPort = v
}

func (o AddressesInfo) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["dns_port"] = o.DnsPort
	}
	if true {
		toSerialize["interfaces"] = o.Interfaces
	}
	if true {
		toSerialize["version"] = o.Version
	}
	if true {
		toSerialize["web_port"] = o.WebPort
	}
	return json.Marshal(toSerialize)
}

type NullableAddressesInfo struct {
	value *AddressesInfo
	isSet bool
}

func (v NullableAddressesInfo) Get() *AddressesInfo {
	return v.value
}

func (v *NullableAddressesInfo) Set(val *AddressesInfo) {
	v.value = val
	v.isSet = true
}

func (v NullableAddressesInfo) IsSet() bool {
	return v.isSet
}

func (v *NullableAddressesInfo) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAddressesInfo(val *AddressesInfo) *NullableAddressesInfo {
	return &NullableAddressesInfo{value: val, isSet: true}
}

func (v NullableAddressesInfo) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAddressesInfo) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


