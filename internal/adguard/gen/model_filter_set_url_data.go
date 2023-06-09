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

// FilterSetUrlData Filter update data
type FilterSetUrlData struct {
	Enabled bool `json:"enabled"`
	Name string `json:"name"`
	Url string `json:"url"`
}

// NewFilterSetUrlData instantiates a new FilterSetUrlData object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFilterSetUrlData(enabled bool, name string, url string) *FilterSetUrlData {
	this := FilterSetUrlData{}
	this.Enabled = enabled
	this.Name = name
	this.Url = url
	return &this
}

// NewFilterSetUrlDataWithDefaults instantiates a new FilterSetUrlData object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFilterSetUrlDataWithDefaults() *FilterSetUrlData {
	this := FilterSetUrlData{}
	return &this
}

// GetEnabled returns the Enabled field value
func (o *FilterSetUrlData) GetEnabled() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.Enabled
}

// GetEnabledOk returns a tuple with the Enabled field value
// and a boolean to check if the value has been set.
func (o *FilterSetUrlData) GetEnabledOk() (*bool, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Enabled, true
}

// SetEnabled sets field value
func (o *FilterSetUrlData) SetEnabled(v bool) {
	o.Enabled = v
}

// GetName returns the Name field value
func (o *FilterSetUrlData) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *FilterSetUrlData) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *FilterSetUrlData) SetName(v string) {
	o.Name = v
}

// GetUrl returns the Url field value
func (o *FilterSetUrlData) GetUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Url
}

// GetUrlOk returns a tuple with the Url field value
// and a boolean to check if the value has been set.
func (o *FilterSetUrlData) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Url, true
}

// SetUrl sets field value
func (o *FilterSetUrlData) SetUrl(v string) {
	o.Url = v
}

func (o FilterSetUrlData) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["enabled"] = o.Enabled
	}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["url"] = o.Url
	}
	return json.Marshal(toSerialize)
}

type NullableFilterSetUrlData struct {
	value *FilterSetUrlData
	isSet bool
}

func (v NullableFilterSetUrlData) Get() *FilterSetUrlData {
	return v.value
}

func (v *NullableFilterSetUrlData) Set(val *FilterSetUrlData) {
	v.value = val
	v.isSet = true
}

func (v NullableFilterSetUrlData) IsSet() bool {
	return v.isSet
}

func (v *NullableFilterSetUrlData) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFilterSetUrlData(val *FilterSetUrlData) *NullableFilterSetUrlData {
	return &NullableFilterSetUrlData{value: val, isSet: true}
}

func (v NullableFilterSetUrlData) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFilterSetUrlData) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


