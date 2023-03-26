# AccessList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedClients** | Pointer to **[]string** | The allowlist of clients: IP addresses, CIDRs, or ClientIDs.  | [optional] 
**DisallowedClients** | Pointer to **[]string** | The blocklist of clients: IP addresses, CIDRs, or ClientIDs.  | [optional] 
**BlockedHosts** | Pointer to **[]string** | The blocklist of hosts. | [optional] 

## Methods

### NewAccessList

`func NewAccessList() *AccessList`

NewAccessList instantiates a new AccessList object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccessListWithDefaults

`func NewAccessListWithDefaults() *AccessList`

NewAccessListWithDefaults instantiates a new AccessList object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowedClients

`func (o *AccessList) GetAllowedClients() []string`

GetAllowedClients returns the AllowedClients field if non-nil, zero value otherwise.

### GetAllowedClientsOk

`func (o *AccessList) GetAllowedClientsOk() (*[]string, bool)`

GetAllowedClientsOk returns a tuple with the AllowedClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedClients

`func (o *AccessList) SetAllowedClients(v []string)`

SetAllowedClients sets AllowedClients field to given value.

### HasAllowedClients

`func (o *AccessList) HasAllowedClients() bool`

HasAllowedClients returns a boolean if a field has been set.

### GetDisallowedClients

`func (o *AccessList) GetDisallowedClients() []string`

GetDisallowedClients returns the DisallowedClients field if non-nil, zero value otherwise.

### GetDisallowedClientsOk

`func (o *AccessList) GetDisallowedClientsOk() (*[]string, bool)`

GetDisallowedClientsOk returns a tuple with the DisallowedClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisallowedClients

`func (o *AccessList) SetDisallowedClients(v []string)`

SetDisallowedClients sets DisallowedClients field to given value.

### HasDisallowedClients

`func (o *AccessList) HasDisallowedClients() bool`

HasDisallowedClients returns a boolean if a field has been set.

### GetBlockedHosts

`func (o *AccessList) GetBlockedHosts() []string`

GetBlockedHosts returns the BlockedHosts field if non-nil, zero value otherwise.

### GetBlockedHostsOk

`func (o *AccessList) GetBlockedHostsOk() (*[]string, bool)`

GetBlockedHostsOk returns a tuple with the BlockedHosts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockedHosts

`func (o *AccessList) SetBlockedHosts(v []string)`

SetBlockedHosts sets BlockedHosts field to given value.

### HasBlockedHosts

`func (o *AccessList) HasBlockedHosts() bool`

HasBlockedHosts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


