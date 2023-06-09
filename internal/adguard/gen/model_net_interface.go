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

// NetInterface Network interface info
type NetInterface struct {
	// Flags could be any combination of the following values, divided by the \"|\" character: \"up\", \"broadcast\", \"loopback\", \"pointtopoint\" and \"multicast\". 
	Flags string `json:"flags"`
	HardwareAddress string `json:"hardware_address"`
	Name string `json:"name"`
	IpAddresses []string `json:"ip_addresses,omitempty"`
	Mtu int32 `json:"mtu"`
}

// NewNetInterface instantiates a new NetInterface object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewNetInterface(flags string, hardwareAddress string, name string, mtu int32) *NetInterface {
	this := NetInterface{}
	this.Flags = flags
	this.HardwareAddress = hardwareAddress
	this.Name = name
	this.Mtu = mtu
	return &this
}

// NewNetInterfaceWithDefaults instantiates a new NetInterface object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewNetInterfaceWithDefaults() *NetInterface {
	this := NetInterface{}
	return &this
}

// GetFlags returns the Flags field value
func (o *NetInterface) GetFlags() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Flags
}

// GetFlagsOk returns a tuple with the Flags field value
// and a boolean to check if the value has been set.
func (o *NetInterface) GetFlagsOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Flags, true
}

// SetFlags sets field value
func (o *NetInterface) SetFlags(v string) {
	o.Flags = v
}

// GetHardwareAddress returns the HardwareAddress field value
func (o *NetInterface) GetHardwareAddress() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.HardwareAddress
}

// GetHardwareAddressOk returns a tuple with the HardwareAddress field value
// and a boolean to check if the value has been set.
func (o *NetInterface) GetHardwareAddressOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.HardwareAddress, true
}

// SetHardwareAddress sets field value
func (o *NetInterface) SetHardwareAddress(v string) {
	o.HardwareAddress = v
}

// GetName returns the Name field value
func (o *NetInterface) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *NetInterface) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *NetInterface) SetName(v string) {
	o.Name = v
}

// GetIpAddresses returns the IpAddresses field value if set, zero value otherwise.
func (o *NetInterface) GetIpAddresses() []string {
	if o == nil || o.IpAddresses == nil {
		var ret []string
		return ret
	}
	return o.IpAddresses
}

// GetIpAddressesOk returns a tuple with the IpAddresses field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *NetInterface) GetIpAddressesOk() ([]string, bool) {
	if o == nil || o.IpAddresses == nil {
		return nil, false
	}
	return o.IpAddresses, true
}

// HasIpAddresses returns a boolean if a field has been set.
func (o *NetInterface) HasIpAddresses() bool {
	if o != nil && o.IpAddresses != nil {
		return true
	}

	return false
}

// SetIpAddresses gets a reference to the given []string and assigns it to the IpAddresses field.
func (o *NetInterface) SetIpAddresses(v []string) {
	o.IpAddresses = v
}

// GetMtu returns the Mtu field value
func (o *NetInterface) GetMtu() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Mtu
}

// GetMtuOk returns a tuple with the Mtu field value
// and a boolean to check if the value has been set.
func (o *NetInterface) GetMtuOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Mtu, true
}

// SetMtu sets field value
func (o *NetInterface) SetMtu(v int32) {
	o.Mtu = v
}

func (o NetInterface) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["flags"] = o.Flags
	}
	if true {
		toSerialize["hardware_address"] = o.HardwareAddress
	}
	if true {
		toSerialize["name"] = o.Name
	}
	if o.IpAddresses != nil {
		toSerialize["ip_addresses"] = o.IpAddresses
	}
	if true {
		toSerialize["mtu"] = o.Mtu
	}
	return json.Marshal(toSerialize)
}

type NullableNetInterface struct {
	value *NetInterface
	isSet bool
}

func (v NullableNetInterface) Get() *NetInterface {
	return v.value
}

func (v *NullableNetInterface) Set(val *NetInterface) {
	v.value = val
	v.isSet = true
}

func (v NullableNetInterface) IsSet() bool {
	return v.isSet
}

func (v *NullableNetInterface) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableNetInterface(val *NetInterface) *NullableNetInterface {
	return &NullableNetInterface{value: val, isSet: true}
}

func (v NullableNetInterface) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableNetInterface) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


