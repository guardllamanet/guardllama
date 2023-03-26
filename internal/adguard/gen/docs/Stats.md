# Stats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeUnits** | Pointer to **string** | Time units | [optional] 
**NumDnsQueries** | Pointer to **int32** | Total number of DNS queries | [optional] 
**NumBlockedFiltering** | Pointer to **int32** | Number of requests blocked by filtering rules | [optional] 
**NumReplacedSafebrowsing** | Pointer to **int32** | Number of requests blocked by safebrowsing module | [optional] 
**NumReplacedSafesearch** | Pointer to **int32** | Number of requests blocked by safesearch module | [optional] 
**NumReplacedParental** | Pointer to **int32** | Number of blocked adult websites | [optional] 
**AvgProcessingTime** | Pointer to **float32** | Average time in milliseconds on processing a DNS | [optional] 
**TopQueriedDomains** | Pointer to [**[]TopArrayEntry**](TopArrayEntry.md) |  | [optional] 
**TopClients** | Pointer to [**[]TopArrayEntry**](TopArrayEntry.md) |  | [optional] 
**TopBlockedDomains** | Pointer to [**[]TopArrayEntry**](TopArrayEntry.md) |  | [optional] 
**DnsQueries** | Pointer to **[]int32** |  | [optional] 
**BlockedFiltering** | Pointer to **[]int32** |  | [optional] 
**ReplacedSafebrowsing** | Pointer to **[]int32** |  | [optional] 
**ReplacedParental** | Pointer to **[]int32** |  | [optional] 

## Methods

### NewStats

`func NewStats() *Stats`

NewStats instantiates a new Stats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStatsWithDefaults

`func NewStatsWithDefaults() *Stats`

NewStatsWithDefaults instantiates a new Stats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimeUnits

`func (o *Stats) GetTimeUnits() string`

GetTimeUnits returns the TimeUnits field if non-nil, zero value otherwise.

### GetTimeUnitsOk

`func (o *Stats) GetTimeUnitsOk() (*string, bool)`

GetTimeUnitsOk returns a tuple with the TimeUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeUnits

`func (o *Stats) SetTimeUnits(v string)`

SetTimeUnits sets TimeUnits field to given value.

### HasTimeUnits

`func (o *Stats) HasTimeUnits() bool`

HasTimeUnits returns a boolean if a field has been set.

### GetNumDnsQueries

`func (o *Stats) GetNumDnsQueries() int32`

GetNumDnsQueries returns the NumDnsQueries field if non-nil, zero value otherwise.

### GetNumDnsQueriesOk

`func (o *Stats) GetNumDnsQueriesOk() (*int32, bool)`

GetNumDnsQueriesOk returns a tuple with the NumDnsQueries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumDnsQueries

`func (o *Stats) SetNumDnsQueries(v int32)`

SetNumDnsQueries sets NumDnsQueries field to given value.

### HasNumDnsQueries

`func (o *Stats) HasNumDnsQueries() bool`

HasNumDnsQueries returns a boolean if a field has been set.

### GetNumBlockedFiltering

`func (o *Stats) GetNumBlockedFiltering() int32`

GetNumBlockedFiltering returns the NumBlockedFiltering field if non-nil, zero value otherwise.

### GetNumBlockedFilteringOk

`func (o *Stats) GetNumBlockedFilteringOk() (*int32, bool)`

GetNumBlockedFilteringOk returns a tuple with the NumBlockedFiltering field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumBlockedFiltering

`func (o *Stats) SetNumBlockedFiltering(v int32)`

SetNumBlockedFiltering sets NumBlockedFiltering field to given value.

### HasNumBlockedFiltering

`func (o *Stats) HasNumBlockedFiltering() bool`

HasNumBlockedFiltering returns a boolean if a field has been set.

### GetNumReplacedSafebrowsing

`func (o *Stats) GetNumReplacedSafebrowsing() int32`

GetNumReplacedSafebrowsing returns the NumReplacedSafebrowsing field if non-nil, zero value otherwise.

### GetNumReplacedSafebrowsingOk

`func (o *Stats) GetNumReplacedSafebrowsingOk() (*int32, bool)`

GetNumReplacedSafebrowsingOk returns a tuple with the NumReplacedSafebrowsing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumReplacedSafebrowsing

`func (o *Stats) SetNumReplacedSafebrowsing(v int32)`

SetNumReplacedSafebrowsing sets NumReplacedSafebrowsing field to given value.

### HasNumReplacedSafebrowsing

`func (o *Stats) HasNumReplacedSafebrowsing() bool`

HasNumReplacedSafebrowsing returns a boolean if a field has been set.

### GetNumReplacedSafesearch

`func (o *Stats) GetNumReplacedSafesearch() int32`

GetNumReplacedSafesearch returns the NumReplacedSafesearch field if non-nil, zero value otherwise.

### GetNumReplacedSafesearchOk

`func (o *Stats) GetNumReplacedSafesearchOk() (*int32, bool)`

GetNumReplacedSafesearchOk returns a tuple with the NumReplacedSafesearch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumReplacedSafesearch

`func (o *Stats) SetNumReplacedSafesearch(v int32)`

SetNumReplacedSafesearch sets NumReplacedSafesearch field to given value.

### HasNumReplacedSafesearch

`func (o *Stats) HasNumReplacedSafesearch() bool`

HasNumReplacedSafesearch returns a boolean if a field has been set.

### GetNumReplacedParental

`func (o *Stats) GetNumReplacedParental() int32`

GetNumReplacedParental returns the NumReplacedParental field if non-nil, zero value otherwise.

### GetNumReplacedParentalOk

`func (o *Stats) GetNumReplacedParentalOk() (*int32, bool)`

GetNumReplacedParentalOk returns a tuple with the NumReplacedParental field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumReplacedParental

`func (o *Stats) SetNumReplacedParental(v int32)`

SetNumReplacedParental sets NumReplacedParental field to given value.

### HasNumReplacedParental

`func (o *Stats) HasNumReplacedParental() bool`

HasNumReplacedParental returns a boolean if a field has been set.

### GetAvgProcessingTime

`func (o *Stats) GetAvgProcessingTime() float32`

GetAvgProcessingTime returns the AvgProcessingTime field if non-nil, zero value otherwise.

### GetAvgProcessingTimeOk

`func (o *Stats) GetAvgProcessingTimeOk() (*float32, bool)`

GetAvgProcessingTimeOk returns a tuple with the AvgProcessingTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgProcessingTime

`func (o *Stats) SetAvgProcessingTime(v float32)`

SetAvgProcessingTime sets AvgProcessingTime field to given value.

### HasAvgProcessingTime

`func (o *Stats) HasAvgProcessingTime() bool`

HasAvgProcessingTime returns a boolean if a field has been set.

### GetTopQueriedDomains

`func (o *Stats) GetTopQueriedDomains() []TopArrayEntry`

GetTopQueriedDomains returns the TopQueriedDomains field if non-nil, zero value otherwise.

### GetTopQueriedDomainsOk

`func (o *Stats) GetTopQueriedDomainsOk() (*[]TopArrayEntry, bool)`

GetTopQueriedDomainsOk returns a tuple with the TopQueriedDomains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopQueriedDomains

`func (o *Stats) SetTopQueriedDomains(v []TopArrayEntry)`

SetTopQueriedDomains sets TopQueriedDomains field to given value.

### HasTopQueriedDomains

`func (o *Stats) HasTopQueriedDomains() bool`

HasTopQueriedDomains returns a boolean if a field has been set.

### GetTopClients

`func (o *Stats) GetTopClients() []TopArrayEntry`

GetTopClients returns the TopClients field if non-nil, zero value otherwise.

### GetTopClientsOk

`func (o *Stats) GetTopClientsOk() (*[]TopArrayEntry, bool)`

GetTopClientsOk returns a tuple with the TopClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopClients

`func (o *Stats) SetTopClients(v []TopArrayEntry)`

SetTopClients sets TopClients field to given value.

### HasTopClients

`func (o *Stats) HasTopClients() bool`

HasTopClients returns a boolean if a field has been set.

### GetTopBlockedDomains

`func (o *Stats) GetTopBlockedDomains() []TopArrayEntry`

GetTopBlockedDomains returns the TopBlockedDomains field if non-nil, zero value otherwise.

### GetTopBlockedDomainsOk

`func (o *Stats) GetTopBlockedDomainsOk() (*[]TopArrayEntry, bool)`

GetTopBlockedDomainsOk returns a tuple with the TopBlockedDomains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopBlockedDomains

`func (o *Stats) SetTopBlockedDomains(v []TopArrayEntry)`

SetTopBlockedDomains sets TopBlockedDomains field to given value.

### HasTopBlockedDomains

`func (o *Stats) HasTopBlockedDomains() bool`

HasTopBlockedDomains returns a boolean if a field has been set.

### GetDnsQueries

`func (o *Stats) GetDnsQueries() []int32`

GetDnsQueries returns the DnsQueries field if non-nil, zero value otherwise.

### GetDnsQueriesOk

`func (o *Stats) GetDnsQueriesOk() (*[]int32, bool)`

GetDnsQueriesOk returns a tuple with the DnsQueries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsQueries

`func (o *Stats) SetDnsQueries(v []int32)`

SetDnsQueries sets DnsQueries field to given value.

### HasDnsQueries

`func (o *Stats) HasDnsQueries() bool`

HasDnsQueries returns a boolean if a field has been set.

### GetBlockedFiltering

`func (o *Stats) GetBlockedFiltering() []int32`

GetBlockedFiltering returns the BlockedFiltering field if non-nil, zero value otherwise.

### GetBlockedFilteringOk

`func (o *Stats) GetBlockedFilteringOk() (*[]int32, bool)`

GetBlockedFilteringOk returns a tuple with the BlockedFiltering field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockedFiltering

`func (o *Stats) SetBlockedFiltering(v []int32)`

SetBlockedFiltering sets BlockedFiltering field to given value.

### HasBlockedFiltering

`func (o *Stats) HasBlockedFiltering() bool`

HasBlockedFiltering returns a boolean if a field has been set.

### GetReplacedSafebrowsing

`func (o *Stats) GetReplacedSafebrowsing() []int32`

GetReplacedSafebrowsing returns the ReplacedSafebrowsing field if non-nil, zero value otherwise.

### GetReplacedSafebrowsingOk

`func (o *Stats) GetReplacedSafebrowsingOk() (*[]int32, bool)`

GetReplacedSafebrowsingOk returns a tuple with the ReplacedSafebrowsing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplacedSafebrowsing

`func (o *Stats) SetReplacedSafebrowsing(v []int32)`

SetReplacedSafebrowsing sets ReplacedSafebrowsing field to given value.

### HasReplacedSafebrowsing

`func (o *Stats) HasReplacedSafebrowsing() bool`

HasReplacedSafebrowsing returns a boolean if a field has been set.

### GetReplacedParental

`func (o *Stats) GetReplacedParental() []int32`

GetReplacedParental returns the ReplacedParental field if non-nil, zero value otherwise.

### GetReplacedParentalOk

`func (o *Stats) GetReplacedParentalOk() (*[]int32, bool)`

GetReplacedParentalOk returns a tuple with the ReplacedParental field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplacedParental

`func (o *Stats) SetReplacedParental(v []int32)`

SetReplacedParental sets ReplacedParental field to given value.

### HasReplacedParental

`func (o *Stats) HasReplacedParental() bool`

HasReplacedParental returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


