# Clients

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Clients** | Pointer to [**[]Client**](Client.md) | Clients array | [optional] 
**AutoClients** | Pointer to [**[]ClientAuto**](ClientAuto.md) | Auto-Clients array | [optional] 
**SupportedTags** | Pointer to **[]string** |  | [optional] 

## Methods

### NewClients

`func NewClients() *Clients`

NewClients instantiates a new Clients object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClientsWithDefaults

`func NewClientsWithDefaults() *Clients`

NewClientsWithDefaults instantiates a new Clients object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClients

`func (o *Clients) GetClients() []Client`

GetClients returns the Clients field if non-nil, zero value otherwise.

### GetClientsOk

`func (o *Clients) GetClientsOk() (*[]Client, bool)`

GetClientsOk returns a tuple with the Clients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClients

`func (o *Clients) SetClients(v []Client)`

SetClients sets Clients field to given value.

### HasClients

`func (o *Clients) HasClients() bool`

HasClients returns a boolean if a field has been set.

### GetAutoClients

`func (o *Clients) GetAutoClients() []ClientAuto`

GetAutoClients returns the AutoClients field if non-nil, zero value otherwise.

### GetAutoClientsOk

`func (o *Clients) GetAutoClientsOk() (*[]ClientAuto, bool)`

GetAutoClientsOk returns a tuple with the AutoClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAutoClients

`func (o *Clients) SetAutoClients(v []ClientAuto)`

SetAutoClients sets AutoClients field to given value.

### HasAutoClients

`func (o *Clients) HasAutoClients() bool`

HasAutoClients returns a boolean if a field has been set.

### GetSupportedTags

`func (o *Clients) GetSupportedTags() []string`

GetSupportedTags returns the SupportedTags field if non-nil, zero value otherwise.

### GetSupportedTagsOk

`func (o *Clients) GetSupportedTagsOk() (*[]string, bool)`

GetSupportedTagsOk returns a tuple with the SupportedTags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupportedTags

`func (o *Clients) SetSupportedTags(v []string)`

SetSupportedTags sets SupportedTags field to given value.

### HasSupportedTags

`func (o *Clients) HasSupportedTags() bool`

HasSupportedTags returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


