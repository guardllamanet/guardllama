# FilterCheckHostResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | Pointer to **string** | Request filtering status. | [optional] 
**FilterId** | Pointer to **int32** | In case if there&#39;s a rule applied to this DNS request, this is ID of the filter list that the rule belongs to. Deprecated: use &#x60;rules[*].filter_list_id&#x60; instead.  | [optional] 
**Rule** | Pointer to **string** | Filtering rule applied to the request (if any). Deprecated: use &#x60;rules[*].text&#x60; instead.  | [optional] 
**Rules** | Pointer to [**[]ResultRule**](ResultRule.md) | Applied rules. | [optional] 
**ServiceName** | Pointer to **string** | Set if reason&#x3D;FilteredBlockedService | [optional] 
**Cname** | Pointer to **string** | Set if reason&#x3D;Rewrite | [optional] 
**IpAddrs** | Pointer to **[]string** | Set if reason&#x3D;Rewrite | [optional] 

## Methods

### NewFilterCheckHostResponse

`func NewFilterCheckHostResponse() *FilterCheckHostResponse`

NewFilterCheckHostResponse instantiates a new FilterCheckHostResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFilterCheckHostResponseWithDefaults

`func NewFilterCheckHostResponseWithDefaults() *FilterCheckHostResponse`

NewFilterCheckHostResponseWithDefaults instantiates a new FilterCheckHostResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetReason

`func (o *FilterCheckHostResponse) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *FilterCheckHostResponse) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *FilterCheckHostResponse) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *FilterCheckHostResponse) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetFilterId

`func (o *FilterCheckHostResponse) GetFilterId() int32`

GetFilterId returns the FilterId field if non-nil, zero value otherwise.

### GetFilterIdOk

`func (o *FilterCheckHostResponse) GetFilterIdOk() (*int32, bool)`

GetFilterIdOk returns a tuple with the FilterId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilterId

`func (o *FilterCheckHostResponse) SetFilterId(v int32)`

SetFilterId sets FilterId field to given value.

### HasFilterId

`func (o *FilterCheckHostResponse) HasFilterId() bool`

HasFilterId returns a boolean if a field has been set.

### GetRule

`func (o *FilterCheckHostResponse) GetRule() string`

GetRule returns the Rule field if non-nil, zero value otherwise.

### GetRuleOk

`func (o *FilterCheckHostResponse) GetRuleOk() (*string, bool)`

GetRuleOk returns a tuple with the Rule field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRule

`func (o *FilterCheckHostResponse) SetRule(v string)`

SetRule sets Rule field to given value.

### HasRule

`func (o *FilterCheckHostResponse) HasRule() bool`

HasRule returns a boolean if a field has been set.

### GetRules

`func (o *FilterCheckHostResponse) GetRules() []ResultRule`

GetRules returns the Rules field if non-nil, zero value otherwise.

### GetRulesOk

`func (o *FilterCheckHostResponse) GetRulesOk() (*[]ResultRule, bool)`

GetRulesOk returns a tuple with the Rules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRules

`func (o *FilterCheckHostResponse) SetRules(v []ResultRule)`

SetRules sets Rules field to given value.

### HasRules

`func (o *FilterCheckHostResponse) HasRules() bool`

HasRules returns a boolean if a field has been set.

### GetServiceName

`func (o *FilterCheckHostResponse) GetServiceName() string`

GetServiceName returns the ServiceName field if non-nil, zero value otherwise.

### GetServiceNameOk

`func (o *FilterCheckHostResponse) GetServiceNameOk() (*string, bool)`

GetServiceNameOk returns a tuple with the ServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceName

`func (o *FilterCheckHostResponse) SetServiceName(v string)`

SetServiceName sets ServiceName field to given value.

### HasServiceName

`func (o *FilterCheckHostResponse) HasServiceName() bool`

HasServiceName returns a boolean if a field has been set.

### GetCname

`func (o *FilterCheckHostResponse) GetCname() string`

GetCname returns the Cname field if non-nil, zero value otherwise.

### GetCnameOk

`func (o *FilterCheckHostResponse) GetCnameOk() (*string, bool)`

GetCnameOk returns a tuple with the Cname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCname

`func (o *FilterCheckHostResponse) SetCname(v string)`

SetCname sets Cname field to given value.

### HasCname

`func (o *FilterCheckHostResponse) HasCname() bool`

HasCname returns a boolean if a field has been set.

### GetIpAddrs

`func (o *FilterCheckHostResponse) GetIpAddrs() []string`

GetIpAddrs returns the IpAddrs field if non-nil, zero value otherwise.

### GetIpAddrsOk

`func (o *FilterCheckHostResponse) GetIpAddrsOk() (*[]string, bool)`

GetIpAddrsOk returns a tuple with the IpAddrs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIpAddrs

`func (o *FilterCheckHostResponse) SetIpAddrs(v []string)`

SetIpAddrs sets IpAddrs field to given value.

### HasIpAddrs

`func (o *FilterCheckHostResponse) HasIpAddrs() bool`

HasIpAddrs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


