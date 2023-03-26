# ClientUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Data** | Pointer to [**Client**](Client.md) |  | [optional] 

## Methods

### NewClientUpdate

`func NewClientUpdate() *ClientUpdate`

NewClientUpdate instantiates a new ClientUpdate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClientUpdateWithDefaults

`func NewClientUpdateWithDefaults() *ClientUpdate`

NewClientUpdateWithDefaults instantiates a new ClientUpdate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ClientUpdate) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ClientUpdate) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ClientUpdate) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ClientUpdate) HasName() bool`

HasName returns a boolean if a field has been set.

### GetData

`func (o *ClientUpdate) GetData() Client`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ClientUpdate) GetDataOk() (*Client, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ClientUpdate) SetData(v Client)`

SetData sets Data field to given value.

### HasData

`func (o *ClientUpdate) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


