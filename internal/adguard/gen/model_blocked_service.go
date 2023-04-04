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

// BlockedService struct for BlockedService
type BlockedService struct {
	// The SVG icon as a Base64-encoded string to make it easier to embed it into a data URL. 
	IconSvg string `json:"icon_svg"`
	// The ID of this service. 
	Id string `json:"id"`
	// The human-readable name of this service. 
	Name string `json:"name"`
	// The array of the filtering rules. 
	Rules []string `json:"rules"`
}

// NewBlockedService instantiates a new BlockedService object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewBlockedService(iconSvg string, id string, name string, rules []string) *BlockedService {
	this := BlockedService{}
	this.IconSvg = iconSvg
	this.Id = id
	this.Name = name
	this.Rules = rules
	return &this
}

// NewBlockedServiceWithDefaults instantiates a new BlockedService object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewBlockedServiceWithDefaults() *BlockedService {
	this := BlockedService{}
	return &this
}

// GetIconSvg returns the IconSvg field value
func (o *BlockedService) GetIconSvg() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.IconSvg
}

// GetIconSvgOk returns a tuple with the IconSvg field value
// and a boolean to check if the value has been set.
func (o *BlockedService) GetIconSvgOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.IconSvg, true
}

// SetIconSvg sets field value
func (o *BlockedService) SetIconSvg(v string) {
	o.IconSvg = v
}

// GetId returns the Id field value
func (o *BlockedService) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *BlockedService) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *BlockedService) SetId(v string) {
	o.Id = v
}

// GetName returns the Name field value
func (o *BlockedService) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *BlockedService) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *BlockedService) SetName(v string) {
	o.Name = v
}

// GetRules returns the Rules field value
func (o *BlockedService) GetRules() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Rules
}

// GetRulesOk returns a tuple with the Rules field value
// and a boolean to check if the value has been set.
func (o *BlockedService) GetRulesOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Rules, true
}

// SetRules sets field value
func (o *BlockedService) SetRules(v []string) {
	o.Rules = v
}

func (o BlockedService) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["icon_svg"] = o.IconSvg
	}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["rules"] = o.Rules
	}
	return json.Marshal(toSerialize)
}

type NullableBlockedService struct {
	value *BlockedService
	isSet bool
}

func (v NullableBlockedService) Get() *BlockedService {
	return v.value
}

func (v *NullableBlockedService) Set(val *BlockedService) {
	v.value = val
	v.isSet = true
}

func (v NullableBlockedService) IsSet() bool {
	return v.isSet
}

func (v *NullableBlockedService) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableBlockedService(val *BlockedService) *NullableBlockedService {
	return &NullableBlockedService{value: val, isSet: true}
}

func (v NullableBlockedService) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableBlockedService) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

