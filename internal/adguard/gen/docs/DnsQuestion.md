# DnsQuestion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**UnicodeName** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 

## Methods

### NewDnsQuestion

`func NewDnsQuestion() *DnsQuestion`

NewDnsQuestion instantiates a new DnsQuestion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDnsQuestionWithDefaults

`func NewDnsQuestionWithDefaults() *DnsQuestion`

NewDnsQuestionWithDefaults instantiates a new DnsQuestion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *DnsQuestion) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *DnsQuestion) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *DnsQuestion) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *DnsQuestion) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetName

`func (o *DnsQuestion) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DnsQuestion) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DnsQuestion) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DnsQuestion) HasName() bool`

HasName returns a boolean if a field has been set.

### GetUnicodeName

`func (o *DnsQuestion) GetUnicodeName() string`

GetUnicodeName returns the UnicodeName field if non-nil, zero value otherwise.

### GetUnicodeNameOk

`func (o *DnsQuestion) GetUnicodeNameOk() (*string, bool)`

GetUnicodeNameOk returns a tuple with the UnicodeName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnicodeName

`func (o *DnsQuestion) SetUnicodeName(v string)`

SetUnicodeName sets UnicodeName field to given value.

### HasUnicodeName

`func (o *DnsQuestion) HasUnicodeName() bool`

HasUnicodeName returns a boolean if a field has been set.

### GetType

`func (o *DnsQuestion) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DnsQuestion) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DnsQuestion) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DnsQuestion) HasType() bool`

HasType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


