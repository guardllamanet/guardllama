# ClientFindSubEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Name | [optional] 
**Ids** | Pointer to **[]string** | IP, CIDR, MAC, or ClientID. | [optional] 
**UseGlobalSettings** | Pointer to **bool** |  | [optional] 
**FilteringEnabled** | Pointer to **bool** |  | [optional] 
**ParentalEnabled** | Pointer to **bool** |  | [optional] 
**SafebrowsingEnabled** | Pointer to **bool** |  | [optional] 
**SafesearchEnabled** | Pointer to **bool** |  | [optional] 
**UseGlobalBlockedServices** | Pointer to **bool** |  | [optional] 
**BlockedServices** | Pointer to **[]string** |  | [optional] 
**Upstreams** | Pointer to **[]string** |  | [optional] 
**WhoisInfo** | Pointer to **map[string]string** |  | [optional] 
**Disallowed** | Pointer to **bool** | Whether the client&#39;s IP is blocked or not.  | [optional] 
**DisallowedRule** | Pointer to **string** | The rule due to which the client is disallowed.  If disallowed is set to true, and this string is empty, then the client IP is disallowed by the \&quot;allowed IP list\&quot;, that is it is not included in the allowed list.  | [optional] 

## Methods

### NewClientFindSubEntry

`func NewClientFindSubEntry() *ClientFindSubEntry`

NewClientFindSubEntry instantiates a new ClientFindSubEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClientFindSubEntryWithDefaults

`func NewClientFindSubEntryWithDefaults() *ClientFindSubEntry`

NewClientFindSubEntryWithDefaults instantiates a new ClientFindSubEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ClientFindSubEntry) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ClientFindSubEntry) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ClientFindSubEntry) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ClientFindSubEntry) HasName() bool`

HasName returns a boolean if a field has been set.

### GetIds

`func (o *ClientFindSubEntry) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *ClientFindSubEntry) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *ClientFindSubEntry) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *ClientFindSubEntry) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetUseGlobalSettings

`func (o *ClientFindSubEntry) GetUseGlobalSettings() bool`

GetUseGlobalSettings returns the UseGlobalSettings field if non-nil, zero value otherwise.

### GetUseGlobalSettingsOk

`func (o *ClientFindSubEntry) GetUseGlobalSettingsOk() (*bool, bool)`

GetUseGlobalSettingsOk returns a tuple with the UseGlobalSettings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUseGlobalSettings

`func (o *ClientFindSubEntry) SetUseGlobalSettings(v bool)`

SetUseGlobalSettings sets UseGlobalSettings field to given value.

### HasUseGlobalSettings

`func (o *ClientFindSubEntry) HasUseGlobalSettings() bool`

HasUseGlobalSettings returns a boolean if a field has been set.

### GetFilteringEnabled

`func (o *ClientFindSubEntry) GetFilteringEnabled() bool`

GetFilteringEnabled returns the FilteringEnabled field if non-nil, zero value otherwise.

### GetFilteringEnabledOk

`func (o *ClientFindSubEntry) GetFilteringEnabledOk() (*bool, bool)`

GetFilteringEnabledOk returns a tuple with the FilteringEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilteringEnabled

`func (o *ClientFindSubEntry) SetFilteringEnabled(v bool)`

SetFilteringEnabled sets FilteringEnabled field to given value.

### HasFilteringEnabled

`func (o *ClientFindSubEntry) HasFilteringEnabled() bool`

HasFilteringEnabled returns a boolean if a field has been set.

### GetParentalEnabled

`func (o *ClientFindSubEntry) GetParentalEnabled() bool`

GetParentalEnabled returns the ParentalEnabled field if non-nil, zero value otherwise.

### GetParentalEnabledOk

`func (o *ClientFindSubEntry) GetParentalEnabledOk() (*bool, bool)`

GetParentalEnabledOk returns a tuple with the ParentalEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentalEnabled

`func (o *ClientFindSubEntry) SetParentalEnabled(v bool)`

SetParentalEnabled sets ParentalEnabled field to given value.

### HasParentalEnabled

`func (o *ClientFindSubEntry) HasParentalEnabled() bool`

HasParentalEnabled returns a boolean if a field has been set.

### GetSafebrowsingEnabled

`func (o *ClientFindSubEntry) GetSafebrowsingEnabled() bool`

GetSafebrowsingEnabled returns the SafebrowsingEnabled field if non-nil, zero value otherwise.

### GetSafebrowsingEnabledOk

`func (o *ClientFindSubEntry) GetSafebrowsingEnabledOk() (*bool, bool)`

GetSafebrowsingEnabledOk returns a tuple with the SafebrowsingEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSafebrowsingEnabled

`func (o *ClientFindSubEntry) SetSafebrowsingEnabled(v bool)`

SetSafebrowsingEnabled sets SafebrowsingEnabled field to given value.

### HasSafebrowsingEnabled

`func (o *ClientFindSubEntry) HasSafebrowsingEnabled() bool`

HasSafebrowsingEnabled returns a boolean if a field has been set.

### GetSafesearchEnabled

`func (o *ClientFindSubEntry) GetSafesearchEnabled() bool`

GetSafesearchEnabled returns the SafesearchEnabled field if non-nil, zero value otherwise.

### GetSafesearchEnabledOk

`func (o *ClientFindSubEntry) GetSafesearchEnabledOk() (*bool, bool)`

GetSafesearchEnabledOk returns a tuple with the SafesearchEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSafesearchEnabled

`func (o *ClientFindSubEntry) SetSafesearchEnabled(v bool)`

SetSafesearchEnabled sets SafesearchEnabled field to given value.

### HasSafesearchEnabled

`func (o *ClientFindSubEntry) HasSafesearchEnabled() bool`

HasSafesearchEnabled returns a boolean if a field has been set.

### GetUseGlobalBlockedServices

`func (o *ClientFindSubEntry) GetUseGlobalBlockedServices() bool`

GetUseGlobalBlockedServices returns the UseGlobalBlockedServices field if non-nil, zero value otherwise.

### GetUseGlobalBlockedServicesOk

`func (o *ClientFindSubEntry) GetUseGlobalBlockedServicesOk() (*bool, bool)`

GetUseGlobalBlockedServicesOk returns a tuple with the UseGlobalBlockedServices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUseGlobalBlockedServices

`func (o *ClientFindSubEntry) SetUseGlobalBlockedServices(v bool)`

SetUseGlobalBlockedServices sets UseGlobalBlockedServices field to given value.

### HasUseGlobalBlockedServices

`func (o *ClientFindSubEntry) HasUseGlobalBlockedServices() bool`

HasUseGlobalBlockedServices returns a boolean if a field has been set.

### GetBlockedServices

`func (o *ClientFindSubEntry) GetBlockedServices() []string`

GetBlockedServices returns the BlockedServices field if non-nil, zero value otherwise.

### GetBlockedServicesOk

`func (o *ClientFindSubEntry) GetBlockedServicesOk() (*[]string, bool)`

GetBlockedServicesOk returns a tuple with the BlockedServices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockedServices

`func (o *ClientFindSubEntry) SetBlockedServices(v []string)`

SetBlockedServices sets BlockedServices field to given value.

### HasBlockedServices

`func (o *ClientFindSubEntry) HasBlockedServices() bool`

HasBlockedServices returns a boolean if a field has been set.

### GetUpstreams

`func (o *ClientFindSubEntry) GetUpstreams() []string`

GetUpstreams returns the Upstreams field if non-nil, zero value otherwise.

### GetUpstreamsOk

`func (o *ClientFindSubEntry) GetUpstreamsOk() (*[]string, bool)`

GetUpstreamsOk returns a tuple with the Upstreams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreams

`func (o *ClientFindSubEntry) SetUpstreams(v []string)`

SetUpstreams sets Upstreams field to given value.

### HasUpstreams

`func (o *ClientFindSubEntry) HasUpstreams() bool`

HasUpstreams returns a boolean if a field has been set.

### GetWhoisInfo

`func (o *ClientFindSubEntry) GetWhoisInfo() map[string]string`

GetWhoisInfo returns the WhoisInfo field if non-nil, zero value otherwise.

### GetWhoisInfoOk

`func (o *ClientFindSubEntry) GetWhoisInfoOk() (*map[string]string, bool)`

GetWhoisInfoOk returns a tuple with the WhoisInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhoisInfo

`func (o *ClientFindSubEntry) SetWhoisInfo(v map[string]string)`

SetWhoisInfo sets WhoisInfo field to given value.

### HasWhoisInfo

`func (o *ClientFindSubEntry) HasWhoisInfo() bool`

HasWhoisInfo returns a boolean if a field has been set.

### GetDisallowed

`func (o *ClientFindSubEntry) GetDisallowed() bool`

GetDisallowed returns the Disallowed field if non-nil, zero value otherwise.

### GetDisallowedOk

`func (o *ClientFindSubEntry) GetDisallowedOk() (*bool, bool)`

GetDisallowedOk returns a tuple with the Disallowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisallowed

`func (o *ClientFindSubEntry) SetDisallowed(v bool)`

SetDisallowed sets Disallowed field to given value.

### HasDisallowed

`func (o *ClientFindSubEntry) HasDisallowed() bool`

HasDisallowed returns a boolean if a field has been set.

### GetDisallowedRule

`func (o *ClientFindSubEntry) GetDisallowedRule() string`

GetDisallowedRule returns the DisallowedRule field if non-nil, zero value otherwise.

### GetDisallowedRuleOk

`func (o *ClientFindSubEntry) GetDisallowedRuleOk() (*string, bool)`

GetDisallowedRuleOk returns a tuple with the DisallowedRule field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisallowedRule

`func (o *ClientFindSubEntry) SetDisallowedRule(v string)`

SetDisallowedRule sets DisallowedRule field to given value.

### HasDisallowedRule

`func (o *ClientFindSubEntry) HasDisallowedRule() bool`

HasDisallowedRule returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


