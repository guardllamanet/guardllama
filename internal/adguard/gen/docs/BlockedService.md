# BlockedService

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IconSvg** | **string** | The SVG icon as a Base64-encoded string to make it easier to embed it into a data URL.  | 
**Id** | **string** | The ID of this service.  | 
**Name** | **string** | The human-readable name of this service.  | 
**Rules** | **[]string** | The array of the filtering rules.  | 

## Methods

### NewBlockedService

`func NewBlockedService(iconSvg string, id string, name string, rules []string, ) *BlockedService`

NewBlockedService instantiates a new BlockedService object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBlockedServiceWithDefaults

`func NewBlockedServiceWithDefaults() *BlockedService`

NewBlockedServiceWithDefaults instantiates a new BlockedService object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIconSvg

`func (o *BlockedService) GetIconSvg() string`

GetIconSvg returns the IconSvg field if non-nil, zero value otherwise.

### GetIconSvgOk

`func (o *BlockedService) GetIconSvgOk() (*string, bool)`

GetIconSvgOk returns a tuple with the IconSvg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconSvg

`func (o *BlockedService) SetIconSvg(v string)`

SetIconSvg sets IconSvg field to given value.


### GetId

`func (o *BlockedService) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BlockedService) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BlockedService) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *BlockedService) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *BlockedService) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *BlockedService) SetName(v string)`

SetName sets Name field to given value.


### GetRules

`func (o *BlockedService) GetRules() []string`

GetRules returns the Rules field if non-nil, zero value otherwise.

### GetRulesOk

`func (o *BlockedService) GetRulesOk() (*[]string, bool)`

GetRulesOk returns a tuple with the Rules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRules

`func (o *BlockedService) SetRules(v []string)`

SetRules sets Rules field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


