# ResultRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilterListId** | Pointer to **int64** | In case if there&#39;s a rule applied to this DNS request, this is ID of the filter list that the rule belongs to.  | [optional] 
**Text** | Pointer to **string** | The text of the filtering rule applied to the request (if any).  | [optional] 

## Methods

### NewResultRule

`func NewResultRule() *ResultRule`

NewResultRule instantiates a new ResultRule object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResultRuleWithDefaults

`func NewResultRuleWithDefaults() *ResultRule`

NewResultRuleWithDefaults instantiates a new ResultRule object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFilterListId

`func (o *ResultRule) GetFilterListId() int64`

GetFilterListId returns the FilterListId field if non-nil, zero value otherwise.

### GetFilterListIdOk

`func (o *ResultRule) GetFilterListIdOk() (*int64, bool)`

GetFilterListIdOk returns a tuple with the FilterListId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilterListId

`func (o *ResultRule) SetFilterListId(v int64)`

SetFilterListId sets FilterListId field to given value.

### HasFilterListId

`func (o *ResultRule) HasFilterListId() bool`

HasFilterListId returns a boolean if a field has been set.

### GetText

`func (o *ResultRule) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ResultRule) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ResultRule) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ResultRule) HasText() bool`

HasText returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


