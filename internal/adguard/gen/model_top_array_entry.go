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

// TopArrayEntry Represent the number of hits per key (domain or client IP). 
type TopArrayEntry struct {
	DomainOrIp *int32 `json:"domain_or_ip,omitempty"`
}

// NewTopArrayEntry instantiates a new TopArrayEntry object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTopArrayEntry() *TopArrayEntry {
	this := TopArrayEntry{}
	return &this
}

// NewTopArrayEntryWithDefaults instantiates a new TopArrayEntry object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTopArrayEntryWithDefaults() *TopArrayEntry {
	this := TopArrayEntry{}
	return &this
}

// GetDomainOrIp returns the DomainOrIp field value if set, zero value otherwise.
func (o *TopArrayEntry) GetDomainOrIp() int32 {
	if o == nil || o.DomainOrIp == nil {
		var ret int32
		return ret
	}
	return *o.DomainOrIp
}

// GetDomainOrIpOk returns a tuple with the DomainOrIp field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TopArrayEntry) GetDomainOrIpOk() (*int32, bool) {
	if o == nil || o.DomainOrIp == nil {
		return nil, false
	}
	return o.DomainOrIp, true
}

// HasDomainOrIp returns a boolean if a field has been set.
func (o *TopArrayEntry) HasDomainOrIp() bool {
	if o != nil && o.DomainOrIp != nil {
		return true
	}

	return false
}

// SetDomainOrIp gets a reference to the given int32 and assigns it to the DomainOrIp field.
func (o *TopArrayEntry) SetDomainOrIp(v int32) {
	o.DomainOrIp = &v
}

func (o TopArrayEntry) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.DomainOrIp != nil {
		toSerialize["domain_or_ip"] = o.DomainOrIp
	}
	return json.Marshal(toSerialize)
}

type NullableTopArrayEntry struct {
	value *TopArrayEntry
	isSet bool
}

func (v NullableTopArrayEntry) Get() *TopArrayEntry {
	return v.value
}

func (v *NullableTopArrayEntry) Set(val *TopArrayEntry) {
	v.value = val
	v.isSet = true
}

func (v NullableTopArrayEntry) IsSet() bool {
	return v.isSet
}

func (v *NullableTopArrayEntry) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTopArrayEntry(val *TopArrayEntry) *NullableTopArrayEntry {
	return &NullableTopArrayEntry{value: val, isSet: true}
}

func (v NullableTopArrayEntry) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTopArrayEntry) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


