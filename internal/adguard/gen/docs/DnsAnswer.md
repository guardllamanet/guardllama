# DnsAnswer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ttl** | Pointer to **int32** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Value** | Pointer to **string** |  | [optional] 

## Methods

### NewDnsAnswer

`func NewDnsAnswer() *DnsAnswer`

NewDnsAnswer instantiates a new DnsAnswer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDnsAnswerWithDefaults

`func NewDnsAnswerWithDefaults() *DnsAnswer`

NewDnsAnswerWithDefaults instantiates a new DnsAnswer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTtl

`func (o *DnsAnswer) GetTtl() int32`

GetTtl returns the Ttl field if non-nil, zero value otherwise.

### GetTtlOk

`func (o *DnsAnswer) GetTtlOk() (*int32, bool)`

GetTtlOk returns a tuple with the Ttl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtl

`func (o *DnsAnswer) SetTtl(v int32)`

SetTtl sets Ttl field to given value.

### HasTtl

`func (o *DnsAnswer) HasTtl() bool`

HasTtl returns a boolean if a field has been set.

### GetType

`func (o *DnsAnswer) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DnsAnswer) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DnsAnswer) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DnsAnswer) HasType() bool`

HasType returns a boolean if a field has been set.

### GetValue

`func (o *DnsAnswer) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DnsAnswer) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DnsAnswer) SetValue(v string)`

SetValue sets Value field to given value.

### HasValue

`func (o *DnsAnswer) HasValue() bool`

HasValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


