# QueryLogItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Answer** | Pointer to [**[]DnsAnswer**](DnsAnswer.md) |  | [optional] 
**OriginalAnswer** | Pointer to [**[]DnsAnswer**](DnsAnswer.md) | Answer from upstream server (optional) | [optional] 
**Cached** | Pointer to **bool** | Defines if the response has been served from cache.  | [optional] 
**Upstream** | Pointer to **string** | Upstream URL starting with tcp://, tls://, https://, or with an IP address.  | [optional] 
**AnswerDnssec** | Pointer to **bool** | If true, the response had the Authenticated Data (AD) flag set.  | [optional] 
**Client** | Pointer to **string** | The client&#39;s IP address.  | [optional] 
**ClientId** | Pointer to **string** | The ClientID, if provided in DoH, DoQ, or DoT.  | [optional] 
**ClientInfo** | Pointer to [**QueryLogItemClient**](QueryLogItemClient.md) |  | [optional] 
**ClientProto** | Pointer to **string** |  | [optional] 
**Ecs** | Pointer to **string** | The IP network defined by an EDNS Client-Subnet option in the request message if any.  | [optional] 
**ElapsedMs** | Pointer to **string** |  | [optional] 
**Question** | Pointer to [**DnsQuestion**](DnsQuestion.md) |  | [optional] 
**FilterId** | Pointer to **int32** | In case if there&#39;s a rule applied to this DNS request, this is ID of the filter list that the rule belongs to. Deprecated: use &#x60;rules[*].filter_list_id&#x60; instead.  | [optional] 
**Rule** | Pointer to **string** | Filtering rule applied to the request (if any). Deprecated: use &#x60;rules[*].text&#x60; instead.  | [optional] 
**Rules** | Pointer to [**[]ResultRule**](ResultRule.md) | Applied rules. | [optional] 
**Reason** | Pointer to **string** | Request filtering status. | [optional] 
**ServiceName** | Pointer to **string** | Set if reason&#x3D;FilteredBlockedService | [optional] 
**Status** | Pointer to **string** | DNS response status | [optional] 
**Time** | Pointer to **string** | DNS request processing start time | [optional] 

## Methods

### NewQueryLogItem

`func NewQueryLogItem() *QueryLogItem`

NewQueryLogItem instantiates a new QueryLogItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueryLogItemWithDefaults

`func NewQueryLogItemWithDefaults() *QueryLogItem`

NewQueryLogItemWithDefaults instantiates a new QueryLogItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAnswer

`func (o *QueryLogItem) GetAnswer() []DnsAnswer`

GetAnswer returns the Answer field if non-nil, zero value otherwise.

### GetAnswerOk

`func (o *QueryLogItem) GetAnswerOk() (*[]DnsAnswer, bool)`

GetAnswerOk returns a tuple with the Answer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswer

`func (o *QueryLogItem) SetAnswer(v []DnsAnswer)`

SetAnswer sets Answer field to given value.

### HasAnswer

`func (o *QueryLogItem) HasAnswer() bool`

HasAnswer returns a boolean if a field has been set.

### GetOriginalAnswer

`func (o *QueryLogItem) GetOriginalAnswer() []DnsAnswer`

GetOriginalAnswer returns the OriginalAnswer field if non-nil, zero value otherwise.

### GetOriginalAnswerOk

`func (o *QueryLogItem) GetOriginalAnswerOk() (*[]DnsAnswer, bool)`

GetOriginalAnswerOk returns a tuple with the OriginalAnswer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalAnswer

`func (o *QueryLogItem) SetOriginalAnswer(v []DnsAnswer)`

SetOriginalAnswer sets OriginalAnswer field to given value.

### HasOriginalAnswer

`func (o *QueryLogItem) HasOriginalAnswer() bool`

HasOriginalAnswer returns a boolean if a field has been set.

### GetCached

`func (o *QueryLogItem) GetCached() bool`

GetCached returns the Cached field if non-nil, zero value otherwise.

### GetCachedOk

`func (o *QueryLogItem) GetCachedOk() (*bool, bool)`

GetCachedOk returns a tuple with the Cached field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCached

`func (o *QueryLogItem) SetCached(v bool)`

SetCached sets Cached field to given value.

### HasCached

`func (o *QueryLogItem) HasCached() bool`

HasCached returns a boolean if a field has been set.

### GetUpstream

`func (o *QueryLogItem) GetUpstream() string`

GetUpstream returns the Upstream field if non-nil, zero value otherwise.

### GetUpstreamOk

`func (o *QueryLogItem) GetUpstreamOk() (*string, bool)`

GetUpstreamOk returns a tuple with the Upstream field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstream

`func (o *QueryLogItem) SetUpstream(v string)`

SetUpstream sets Upstream field to given value.

### HasUpstream

`func (o *QueryLogItem) HasUpstream() bool`

HasUpstream returns a boolean if a field has been set.

### GetAnswerDnssec

`func (o *QueryLogItem) GetAnswerDnssec() bool`

GetAnswerDnssec returns the AnswerDnssec field if non-nil, zero value otherwise.

### GetAnswerDnssecOk

`func (o *QueryLogItem) GetAnswerDnssecOk() (*bool, bool)`

GetAnswerDnssecOk returns a tuple with the AnswerDnssec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswerDnssec

`func (o *QueryLogItem) SetAnswerDnssec(v bool)`

SetAnswerDnssec sets AnswerDnssec field to given value.

### HasAnswerDnssec

`func (o *QueryLogItem) HasAnswerDnssec() bool`

HasAnswerDnssec returns a boolean if a field has been set.

### GetClient

`func (o *QueryLogItem) GetClient() string`

GetClient returns the Client field if non-nil, zero value otherwise.

### GetClientOk

`func (o *QueryLogItem) GetClientOk() (*string, bool)`

GetClientOk returns a tuple with the Client field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClient

`func (o *QueryLogItem) SetClient(v string)`

SetClient sets Client field to given value.

### HasClient

`func (o *QueryLogItem) HasClient() bool`

HasClient returns a boolean if a field has been set.

### GetClientId

`func (o *QueryLogItem) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *QueryLogItem) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *QueryLogItem) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *QueryLogItem) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetClientInfo

`func (o *QueryLogItem) GetClientInfo() QueryLogItemClient`

GetClientInfo returns the ClientInfo field if non-nil, zero value otherwise.

### GetClientInfoOk

`func (o *QueryLogItem) GetClientInfoOk() (*QueryLogItemClient, bool)`

GetClientInfoOk returns a tuple with the ClientInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientInfo

`func (o *QueryLogItem) SetClientInfo(v QueryLogItemClient)`

SetClientInfo sets ClientInfo field to given value.

### HasClientInfo

`func (o *QueryLogItem) HasClientInfo() bool`

HasClientInfo returns a boolean if a field has been set.

### GetClientProto

`func (o *QueryLogItem) GetClientProto() string`

GetClientProto returns the ClientProto field if non-nil, zero value otherwise.

### GetClientProtoOk

`func (o *QueryLogItem) GetClientProtoOk() (*string, bool)`

GetClientProtoOk returns a tuple with the ClientProto field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientProto

`func (o *QueryLogItem) SetClientProto(v string)`

SetClientProto sets ClientProto field to given value.

### HasClientProto

`func (o *QueryLogItem) HasClientProto() bool`

HasClientProto returns a boolean if a field has been set.

### GetEcs

`func (o *QueryLogItem) GetEcs() string`

GetEcs returns the Ecs field if non-nil, zero value otherwise.

### GetEcsOk

`func (o *QueryLogItem) GetEcsOk() (*string, bool)`

GetEcsOk returns a tuple with the Ecs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEcs

`func (o *QueryLogItem) SetEcs(v string)`

SetEcs sets Ecs field to given value.

### HasEcs

`func (o *QueryLogItem) HasEcs() bool`

HasEcs returns a boolean if a field has been set.

### GetElapsedMs

`func (o *QueryLogItem) GetElapsedMs() string`

GetElapsedMs returns the ElapsedMs field if non-nil, zero value otherwise.

### GetElapsedMsOk

`func (o *QueryLogItem) GetElapsedMsOk() (*string, bool)`

GetElapsedMsOk returns a tuple with the ElapsedMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetElapsedMs

`func (o *QueryLogItem) SetElapsedMs(v string)`

SetElapsedMs sets ElapsedMs field to given value.

### HasElapsedMs

`func (o *QueryLogItem) HasElapsedMs() bool`

HasElapsedMs returns a boolean if a field has been set.

### GetQuestion

`func (o *QueryLogItem) GetQuestion() DnsQuestion`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *QueryLogItem) GetQuestionOk() (*DnsQuestion, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *QueryLogItem) SetQuestion(v DnsQuestion)`

SetQuestion sets Question field to given value.

### HasQuestion

`func (o *QueryLogItem) HasQuestion() bool`

HasQuestion returns a boolean if a field has been set.

### GetFilterId

`func (o *QueryLogItem) GetFilterId() int32`

GetFilterId returns the FilterId field if non-nil, zero value otherwise.

### GetFilterIdOk

`func (o *QueryLogItem) GetFilterIdOk() (*int32, bool)`

GetFilterIdOk returns a tuple with the FilterId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilterId

`func (o *QueryLogItem) SetFilterId(v int32)`

SetFilterId sets FilterId field to given value.

### HasFilterId

`func (o *QueryLogItem) HasFilterId() bool`

HasFilterId returns a boolean if a field has been set.

### GetRule

`func (o *QueryLogItem) GetRule() string`

GetRule returns the Rule field if non-nil, zero value otherwise.

### GetRuleOk

`func (o *QueryLogItem) GetRuleOk() (*string, bool)`

GetRuleOk returns a tuple with the Rule field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRule

`func (o *QueryLogItem) SetRule(v string)`

SetRule sets Rule field to given value.

### HasRule

`func (o *QueryLogItem) HasRule() bool`

HasRule returns a boolean if a field has been set.

### GetRules

`func (o *QueryLogItem) GetRules() []ResultRule`

GetRules returns the Rules field if non-nil, zero value otherwise.

### GetRulesOk

`func (o *QueryLogItem) GetRulesOk() (*[]ResultRule, bool)`

GetRulesOk returns a tuple with the Rules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRules

`func (o *QueryLogItem) SetRules(v []ResultRule)`

SetRules sets Rules field to given value.

### HasRules

`func (o *QueryLogItem) HasRules() bool`

HasRules returns a boolean if a field has been set.

### GetReason

`func (o *QueryLogItem) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *QueryLogItem) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *QueryLogItem) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *QueryLogItem) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetServiceName

`func (o *QueryLogItem) GetServiceName() string`

GetServiceName returns the ServiceName field if non-nil, zero value otherwise.

### GetServiceNameOk

`func (o *QueryLogItem) GetServiceNameOk() (*string, bool)`

GetServiceNameOk returns a tuple with the ServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceName

`func (o *QueryLogItem) SetServiceName(v string)`

SetServiceName sets ServiceName field to given value.

### HasServiceName

`func (o *QueryLogItem) HasServiceName() bool`

HasServiceName returns a boolean if a field has been set.

### GetStatus

`func (o *QueryLogItem) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *QueryLogItem) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *QueryLogItem) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *QueryLogItem) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetTime

`func (o *QueryLogItem) GetTime() string`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *QueryLogItem) GetTimeOk() (*string, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *QueryLogItem) SetTime(v string)`

SetTime sets Time field to given value.

### HasTime

`func (o *QueryLogItem) HasTime() bool`

HasTime returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


