# DnsInfo200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BootstrapDns** | Pointer to **[]string** | Bootstrap servers, port is optional after colon.  Empty value will reset it to default values.  | [optional] 
**UpstreamDns** | Pointer to **[]string** | Upstream servers, port is optional after colon.  Empty value will reset it to default values.  | [optional] 
**UpstreamDnsFile** | Pointer to **string** |  | [optional] 
**ProtectionEnabled** | Pointer to **bool** |  | [optional] 
**DhcpAvailable** | Pointer to **bool** |  | [optional] 
**Ratelimit** | Pointer to **int32** |  | [optional] 
**BlockingMode** | Pointer to **string** |  | [optional] 
**BlockingIpv4** | Pointer to **string** |  | [optional] 
**BlockingIpv6** | Pointer to **string** |  | [optional] 
**EdnsCsEnabled** | Pointer to **bool** |  | [optional] 
**DisableIpv6** | Pointer to **bool** |  | [optional] 
**DnssecEnabled** | Pointer to **bool** |  | [optional] 
**CacheSize** | Pointer to **int32** |  | [optional] 
**CacheTtlMin** | Pointer to **int32** |  | [optional] 
**CacheTtlMax** | Pointer to **int32** |  | [optional] 
**CacheOptimistic** | Pointer to **bool** |  | [optional] 
**UpstreamMode** | Pointer to **string** |  | [optional] 
**UsePrivatePtrResolvers** | Pointer to **bool** |  | [optional] 
**ResolveClients** | Pointer to **bool** |  | [optional] 
**LocalPtrUpstreams** | Pointer to **[]string** | Upstream servers, port is optional after colon.  Empty value will reset it to default values.  | [optional] 
**DefaultLocalPtrUpstreams** | Pointer to **[]string** |  | [optional] 

## Methods

### NewDnsInfo200Response

`func NewDnsInfo200Response() *DnsInfo200Response`

NewDnsInfo200Response instantiates a new DnsInfo200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDnsInfo200ResponseWithDefaults

`func NewDnsInfo200ResponseWithDefaults() *DnsInfo200Response`

NewDnsInfo200ResponseWithDefaults instantiates a new DnsInfo200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBootstrapDns

`func (o *DnsInfo200Response) GetBootstrapDns() []string`

GetBootstrapDns returns the BootstrapDns field if non-nil, zero value otherwise.

### GetBootstrapDnsOk

`func (o *DnsInfo200Response) GetBootstrapDnsOk() (*[]string, bool)`

GetBootstrapDnsOk returns a tuple with the BootstrapDns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBootstrapDns

`func (o *DnsInfo200Response) SetBootstrapDns(v []string)`

SetBootstrapDns sets BootstrapDns field to given value.

### HasBootstrapDns

`func (o *DnsInfo200Response) HasBootstrapDns() bool`

HasBootstrapDns returns a boolean if a field has been set.

### GetUpstreamDns

`func (o *DnsInfo200Response) GetUpstreamDns() []string`

GetUpstreamDns returns the UpstreamDns field if non-nil, zero value otherwise.

### GetUpstreamDnsOk

`func (o *DnsInfo200Response) GetUpstreamDnsOk() (*[]string, bool)`

GetUpstreamDnsOk returns a tuple with the UpstreamDns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamDns

`func (o *DnsInfo200Response) SetUpstreamDns(v []string)`

SetUpstreamDns sets UpstreamDns field to given value.

### HasUpstreamDns

`func (o *DnsInfo200Response) HasUpstreamDns() bool`

HasUpstreamDns returns a boolean if a field has been set.

### GetUpstreamDnsFile

`func (o *DnsInfo200Response) GetUpstreamDnsFile() string`

GetUpstreamDnsFile returns the UpstreamDnsFile field if non-nil, zero value otherwise.

### GetUpstreamDnsFileOk

`func (o *DnsInfo200Response) GetUpstreamDnsFileOk() (*string, bool)`

GetUpstreamDnsFileOk returns a tuple with the UpstreamDnsFile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamDnsFile

`func (o *DnsInfo200Response) SetUpstreamDnsFile(v string)`

SetUpstreamDnsFile sets UpstreamDnsFile field to given value.

### HasUpstreamDnsFile

`func (o *DnsInfo200Response) HasUpstreamDnsFile() bool`

HasUpstreamDnsFile returns a boolean if a field has been set.

### GetProtectionEnabled

`func (o *DnsInfo200Response) GetProtectionEnabled() bool`

GetProtectionEnabled returns the ProtectionEnabled field if non-nil, zero value otherwise.

### GetProtectionEnabledOk

`func (o *DnsInfo200Response) GetProtectionEnabledOk() (*bool, bool)`

GetProtectionEnabledOk returns a tuple with the ProtectionEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtectionEnabled

`func (o *DnsInfo200Response) SetProtectionEnabled(v bool)`

SetProtectionEnabled sets ProtectionEnabled field to given value.

### HasProtectionEnabled

`func (o *DnsInfo200Response) HasProtectionEnabled() bool`

HasProtectionEnabled returns a boolean if a field has been set.

### GetDhcpAvailable

`func (o *DnsInfo200Response) GetDhcpAvailable() bool`

GetDhcpAvailable returns the DhcpAvailable field if non-nil, zero value otherwise.

### GetDhcpAvailableOk

`func (o *DnsInfo200Response) GetDhcpAvailableOk() (*bool, bool)`

GetDhcpAvailableOk returns a tuple with the DhcpAvailable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDhcpAvailable

`func (o *DnsInfo200Response) SetDhcpAvailable(v bool)`

SetDhcpAvailable sets DhcpAvailable field to given value.

### HasDhcpAvailable

`func (o *DnsInfo200Response) HasDhcpAvailable() bool`

HasDhcpAvailable returns a boolean if a field has been set.

### GetRatelimit

`func (o *DnsInfo200Response) GetRatelimit() int32`

GetRatelimit returns the Ratelimit field if non-nil, zero value otherwise.

### GetRatelimitOk

`func (o *DnsInfo200Response) GetRatelimitOk() (*int32, bool)`

GetRatelimitOk returns a tuple with the Ratelimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRatelimit

`func (o *DnsInfo200Response) SetRatelimit(v int32)`

SetRatelimit sets Ratelimit field to given value.

### HasRatelimit

`func (o *DnsInfo200Response) HasRatelimit() bool`

HasRatelimit returns a boolean if a field has been set.

### GetBlockingMode

`func (o *DnsInfo200Response) GetBlockingMode() string`

GetBlockingMode returns the BlockingMode field if non-nil, zero value otherwise.

### GetBlockingModeOk

`func (o *DnsInfo200Response) GetBlockingModeOk() (*string, bool)`

GetBlockingModeOk returns a tuple with the BlockingMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingMode

`func (o *DnsInfo200Response) SetBlockingMode(v string)`

SetBlockingMode sets BlockingMode field to given value.

### HasBlockingMode

`func (o *DnsInfo200Response) HasBlockingMode() bool`

HasBlockingMode returns a boolean if a field has been set.

### GetBlockingIpv4

`func (o *DnsInfo200Response) GetBlockingIpv4() string`

GetBlockingIpv4 returns the BlockingIpv4 field if non-nil, zero value otherwise.

### GetBlockingIpv4Ok

`func (o *DnsInfo200Response) GetBlockingIpv4Ok() (*string, bool)`

GetBlockingIpv4Ok returns a tuple with the BlockingIpv4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingIpv4

`func (o *DnsInfo200Response) SetBlockingIpv4(v string)`

SetBlockingIpv4 sets BlockingIpv4 field to given value.

### HasBlockingIpv4

`func (o *DnsInfo200Response) HasBlockingIpv4() bool`

HasBlockingIpv4 returns a boolean if a field has been set.

### GetBlockingIpv6

`func (o *DnsInfo200Response) GetBlockingIpv6() string`

GetBlockingIpv6 returns the BlockingIpv6 field if non-nil, zero value otherwise.

### GetBlockingIpv6Ok

`func (o *DnsInfo200Response) GetBlockingIpv6Ok() (*string, bool)`

GetBlockingIpv6Ok returns a tuple with the BlockingIpv6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingIpv6

`func (o *DnsInfo200Response) SetBlockingIpv6(v string)`

SetBlockingIpv6 sets BlockingIpv6 field to given value.

### HasBlockingIpv6

`func (o *DnsInfo200Response) HasBlockingIpv6() bool`

HasBlockingIpv6 returns a boolean if a field has been set.

### GetEdnsCsEnabled

`func (o *DnsInfo200Response) GetEdnsCsEnabled() bool`

GetEdnsCsEnabled returns the EdnsCsEnabled field if non-nil, zero value otherwise.

### GetEdnsCsEnabledOk

`func (o *DnsInfo200Response) GetEdnsCsEnabledOk() (*bool, bool)`

GetEdnsCsEnabledOk returns a tuple with the EdnsCsEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEdnsCsEnabled

`func (o *DnsInfo200Response) SetEdnsCsEnabled(v bool)`

SetEdnsCsEnabled sets EdnsCsEnabled field to given value.

### HasEdnsCsEnabled

`func (o *DnsInfo200Response) HasEdnsCsEnabled() bool`

HasEdnsCsEnabled returns a boolean if a field has been set.

### GetDisableIpv6

`func (o *DnsInfo200Response) GetDisableIpv6() bool`

GetDisableIpv6 returns the DisableIpv6 field if non-nil, zero value otherwise.

### GetDisableIpv6Ok

`func (o *DnsInfo200Response) GetDisableIpv6Ok() (*bool, bool)`

GetDisableIpv6Ok returns a tuple with the DisableIpv6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableIpv6

`func (o *DnsInfo200Response) SetDisableIpv6(v bool)`

SetDisableIpv6 sets DisableIpv6 field to given value.

### HasDisableIpv6

`func (o *DnsInfo200Response) HasDisableIpv6() bool`

HasDisableIpv6 returns a boolean if a field has been set.

### GetDnssecEnabled

`func (o *DnsInfo200Response) GetDnssecEnabled() bool`

GetDnssecEnabled returns the DnssecEnabled field if non-nil, zero value otherwise.

### GetDnssecEnabledOk

`func (o *DnsInfo200Response) GetDnssecEnabledOk() (*bool, bool)`

GetDnssecEnabledOk returns a tuple with the DnssecEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnssecEnabled

`func (o *DnsInfo200Response) SetDnssecEnabled(v bool)`

SetDnssecEnabled sets DnssecEnabled field to given value.

### HasDnssecEnabled

`func (o *DnsInfo200Response) HasDnssecEnabled() bool`

HasDnssecEnabled returns a boolean if a field has been set.

### GetCacheSize

`func (o *DnsInfo200Response) GetCacheSize() int32`

GetCacheSize returns the CacheSize field if non-nil, zero value otherwise.

### GetCacheSizeOk

`func (o *DnsInfo200Response) GetCacheSizeOk() (*int32, bool)`

GetCacheSizeOk returns a tuple with the CacheSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheSize

`func (o *DnsInfo200Response) SetCacheSize(v int32)`

SetCacheSize sets CacheSize field to given value.

### HasCacheSize

`func (o *DnsInfo200Response) HasCacheSize() bool`

HasCacheSize returns a boolean if a field has been set.

### GetCacheTtlMin

`func (o *DnsInfo200Response) GetCacheTtlMin() int32`

GetCacheTtlMin returns the CacheTtlMin field if non-nil, zero value otherwise.

### GetCacheTtlMinOk

`func (o *DnsInfo200Response) GetCacheTtlMinOk() (*int32, bool)`

GetCacheTtlMinOk returns a tuple with the CacheTtlMin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheTtlMin

`func (o *DnsInfo200Response) SetCacheTtlMin(v int32)`

SetCacheTtlMin sets CacheTtlMin field to given value.

### HasCacheTtlMin

`func (o *DnsInfo200Response) HasCacheTtlMin() bool`

HasCacheTtlMin returns a boolean if a field has been set.

### GetCacheTtlMax

`func (o *DnsInfo200Response) GetCacheTtlMax() int32`

GetCacheTtlMax returns the CacheTtlMax field if non-nil, zero value otherwise.

### GetCacheTtlMaxOk

`func (o *DnsInfo200Response) GetCacheTtlMaxOk() (*int32, bool)`

GetCacheTtlMaxOk returns a tuple with the CacheTtlMax field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheTtlMax

`func (o *DnsInfo200Response) SetCacheTtlMax(v int32)`

SetCacheTtlMax sets CacheTtlMax field to given value.

### HasCacheTtlMax

`func (o *DnsInfo200Response) HasCacheTtlMax() bool`

HasCacheTtlMax returns a boolean if a field has been set.

### GetCacheOptimistic

`func (o *DnsInfo200Response) GetCacheOptimistic() bool`

GetCacheOptimistic returns the CacheOptimistic field if non-nil, zero value otherwise.

### GetCacheOptimisticOk

`func (o *DnsInfo200Response) GetCacheOptimisticOk() (*bool, bool)`

GetCacheOptimisticOk returns a tuple with the CacheOptimistic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheOptimistic

`func (o *DnsInfo200Response) SetCacheOptimistic(v bool)`

SetCacheOptimistic sets CacheOptimistic field to given value.

### HasCacheOptimistic

`func (o *DnsInfo200Response) HasCacheOptimistic() bool`

HasCacheOptimistic returns a boolean if a field has been set.

### GetUpstreamMode

`func (o *DnsInfo200Response) GetUpstreamMode() string`

GetUpstreamMode returns the UpstreamMode field if non-nil, zero value otherwise.

### GetUpstreamModeOk

`func (o *DnsInfo200Response) GetUpstreamModeOk() (*string, bool)`

GetUpstreamModeOk returns a tuple with the UpstreamMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamMode

`func (o *DnsInfo200Response) SetUpstreamMode(v string)`

SetUpstreamMode sets UpstreamMode field to given value.

### HasUpstreamMode

`func (o *DnsInfo200Response) HasUpstreamMode() bool`

HasUpstreamMode returns a boolean if a field has been set.

### GetUsePrivatePtrResolvers

`func (o *DnsInfo200Response) GetUsePrivatePtrResolvers() bool`

GetUsePrivatePtrResolvers returns the UsePrivatePtrResolvers field if non-nil, zero value otherwise.

### GetUsePrivatePtrResolversOk

`func (o *DnsInfo200Response) GetUsePrivatePtrResolversOk() (*bool, bool)`

GetUsePrivatePtrResolversOk returns a tuple with the UsePrivatePtrResolvers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsePrivatePtrResolvers

`func (o *DnsInfo200Response) SetUsePrivatePtrResolvers(v bool)`

SetUsePrivatePtrResolvers sets UsePrivatePtrResolvers field to given value.

### HasUsePrivatePtrResolvers

`func (o *DnsInfo200Response) HasUsePrivatePtrResolvers() bool`

HasUsePrivatePtrResolvers returns a boolean if a field has been set.

### GetResolveClients

`func (o *DnsInfo200Response) GetResolveClients() bool`

GetResolveClients returns the ResolveClients field if non-nil, zero value otherwise.

### GetResolveClientsOk

`func (o *DnsInfo200Response) GetResolveClientsOk() (*bool, bool)`

GetResolveClientsOk returns a tuple with the ResolveClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResolveClients

`func (o *DnsInfo200Response) SetResolveClients(v bool)`

SetResolveClients sets ResolveClients field to given value.

### HasResolveClients

`func (o *DnsInfo200Response) HasResolveClients() bool`

HasResolveClients returns a boolean if a field has been set.

### GetLocalPtrUpstreams

`func (o *DnsInfo200Response) GetLocalPtrUpstreams() []string`

GetLocalPtrUpstreams returns the LocalPtrUpstreams field if non-nil, zero value otherwise.

### GetLocalPtrUpstreamsOk

`func (o *DnsInfo200Response) GetLocalPtrUpstreamsOk() (*[]string, bool)`

GetLocalPtrUpstreamsOk returns a tuple with the LocalPtrUpstreams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalPtrUpstreams

`func (o *DnsInfo200Response) SetLocalPtrUpstreams(v []string)`

SetLocalPtrUpstreams sets LocalPtrUpstreams field to given value.

### HasLocalPtrUpstreams

`func (o *DnsInfo200Response) HasLocalPtrUpstreams() bool`

HasLocalPtrUpstreams returns a boolean if a field has been set.

### GetDefaultLocalPtrUpstreams

`func (o *DnsInfo200Response) GetDefaultLocalPtrUpstreams() []string`

GetDefaultLocalPtrUpstreams returns the DefaultLocalPtrUpstreams field if non-nil, zero value otherwise.

### GetDefaultLocalPtrUpstreamsOk

`func (o *DnsInfo200Response) GetDefaultLocalPtrUpstreamsOk() (*[]string, bool)`

GetDefaultLocalPtrUpstreamsOk returns a tuple with the DefaultLocalPtrUpstreams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultLocalPtrUpstreams

`func (o *DnsInfo200Response) SetDefaultLocalPtrUpstreams(v []string)`

SetDefaultLocalPtrUpstreams sets DefaultLocalPtrUpstreams field to given value.

### HasDefaultLocalPtrUpstreams

`func (o *DnsInfo200Response) HasDefaultLocalPtrUpstreams() bool`

HasDefaultLocalPtrUpstreams returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


