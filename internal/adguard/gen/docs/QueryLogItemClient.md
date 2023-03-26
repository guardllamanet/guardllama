# QueryLogItemClient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disallowed** | **bool** | Whether the client&#39;s IP is blocked or not.  | 
**DisallowedRule** | **string** | The rule due to which the client is allowed or blocked.  | 
**Name** | **string** | Persistent client&#39;s name or runtime client&#39;s hostname.  May be empty.  | 
**Whois** | [**QueryLogItemClientWhois**](QueryLogItemClientWhois.md) |  | 

## Methods

### NewQueryLogItemClient

`func NewQueryLogItemClient(disallowed bool, disallowedRule string, name string, whois QueryLogItemClientWhois, ) *QueryLogItemClient`

NewQueryLogItemClient instantiates a new QueryLogItemClient object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueryLogItemClientWithDefaults

`func NewQueryLogItemClientWithDefaults() *QueryLogItemClient`

NewQueryLogItemClientWithDefaults instantiates a new QueryLogItemClient object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDisallowed

`func (o *QueryLogItemClient) GetDisallowed() bool`

GetDisallowed returns the Disallowed field if non-nil, zero value otherwise.

### GetDisallowedOk

`func (o *QueryLogItemClient) GetDisallowedOk() (*bool, bool)`

GetDisallowedOk returns a tuple with the Disallowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisallowed

`func (o *QueryLogItemClient) SetDisallowed(v bool)`

SetDisallowed sets Disallowed field to given value.


### GetDisallowedRule

`func (o *QueryLogItemClient) GetDisallowedRule() string`

GetDisallowedRule returns the DisallowedRule field if non-nil, zero value otherwise.

### GetDisallowedRuleOk

`func (o *QueryLogItemClient) GetDisallowedRuleOk() (*string, bool)`

GetDisallowedRuleOk returns a tuple with the DisallowedRule field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisallowedRule

`func (o *QueryLogItemClient) SetDisallowedRule(v string)`

SetDisallowedRule sets DisallowedRule field to given value.


### GetName

`func (o *QueryLogItemClient) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *QueryLogItemClient) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *QueryLogItemClient) SetName(v string)`

SetName sets Name field to given value.


### GetWhois

`func (o *QueryLogItemClient) GetWhois() QueryLogItemClientWhois`

GetWhois returns the Whois field if non-nil, zero value otherwise.

### GetWhoisOk

`func (o *QueryLogItemClient) GetWhoisOk() (*QueryLogItemClientWhois, bool)`

GetWhoisOk returns a tuple with the Whois field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhois

`func (o *QueryLogItemClient) SetWhois(v QueryLogItemClientWhois)`

SetWhois sets Whois field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


