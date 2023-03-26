# DhcpSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**V4** | Pointer to [**DhcpSearchV4**](DhcpSearchV4.md) |  | [optional] 
**V6** | Pointer to [**DhcpSearchV6**](DhcpSearchV6.md) |  | [optional] 

## Methods

### NewDhcpSearchResult

`func NewDhcpSearchResult() *DhcpSearchResult`

NewDhcpSearchResult instantiates a new DhcpSearchResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpSearchResultWithDefaults

`func NewDhcpSearchResultWithDefaults() *DhcpSearchResult`

NewDhcpSearchResultWithDefaults instantiates a new DhcpSearchResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetV4

`func (o *DhcpSearchResult) GetV4() DhcpSearchV4`

GetV4 returns the V4 field if non-nil, zero value otherwise.

### GetV4Ok

`func (o *DhcpSearchResult) GetV4Ok() (*DhcpSearchV4, bool)`

GetV4Ok returns a tuple with the V4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV4

`func (o *DhcpSearchResult) SetV4(v DhcpSearchV4)`

SetV4 sets V4 field to given value.

### HasV4

`func (o *DhcpSearchResult) HasV4() bool`

HasV4 returns a boolean if a field has been set.

### GetV6

`func (o *DhcpSearchResult) GetV6() DhcpSearchV6`

GetV6 returns the V6 field if non-nil, zero value otherwise.

### GetV6Ok

`func (o *DhcpSearchResult) GetV6Ok() (*DhcpSearchV6, bool)`

GetV6Ok returns a tuple with the V6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV6

`func (o *DhcpSearchResult) SetV6(v DhcpSearchV6)`

SetV6 sets V6 field to given value.

### HasV6

`func (o *DhcpSearchResult) HasV6() bool`

HasV6 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


