# RewriteEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | Pointer to **string** | Domain name | [optional] 
**Answer** | Pointer to **string** | value of A, AAAA or CNAME DNS record | [optional] 

## Methods

### NewRewriteEntry

`func NewRewriteEntry() *RewriteEntry`

NewRewriteEntry instantiates a new RewriteEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRewriteEntryWithDefaults

`func NewRewriteEntryWithDefaults() *RewriteEntry`

NewRewriteEntryWithDefaults instantiates a new RewriteEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDomain

`func (o *RewriteEntry) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *RewriteEntry) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *RewriteEntry) SetDomain(v string)`

SetDomain sets Domain field to given value.

### HasDomain

`func (o *RewriteEntry) HasDomain() bool`

HasDomain returns a boolean if a field has been set.

### GetAnswer

`func (o *RewriteEntry) GetAnswer() string`

GetAnswer returns the Answer field if non-nil, zero value otherwise.

### GetAnswerOk

`func (o *RewriteEntry) GetAnswerOk() (*string, bool)`

GetAnswerOk returns a tuple with the Answer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswer

`func (o *RewriteEntry) SetAnswer(v string)`

SetAnswer sets Answer field to given value.

### HasAnswer

`func (o *RewriteEntry) HasAnswer() bool`

HasAnswer returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


