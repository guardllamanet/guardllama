# DNSConfig

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

## Methods

### NewDNSConfig

`func NewDNSConfig() *DNSConfig`

NewDNSConfig instantiates a new DNSConfig object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDNSConfigWithDefaults

`func NewDNSConfigWithDefaults() *DNSConfig`

NewDNSConfigWithDefaults instantiates a new DNSConfig object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBootstrapDns

`func (o *DNSConfig) GetBootstrapDns() []string`

GetBootstrapDns returns the BootstrapDns field if non-nil, zero value otherwise.

### GetBootstrapDnsOk

`func (o *DNSConfig) GetBootstrapDnsOk() (*[]string, bool)`

GetBootstrapDnsOk returns a tuple with the BootstrapDns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBootstrapDns

`func (o *DNSConfig) SetBootstrapDns(v []string)`

SetBootstrapDns sets BootstrapDns field to given value.

### HasBootstrapDns

`func (o *DNSConfig) HasBootstrapDns() bool`

HasBootstrapDns returns a boolean if a field has been set.

### GetUpstreamDns

`func (o *DNSConfig) GetUpstreamDns() []string`

GetUpstreamDns returns the UpstreamDns field if non-nil, zero value otherwise.

### GetUpstreamDnsOk

`func (o *DNSConfig) GetUpstreamDnsOk() (*[]string, bool)`

GetUpstreamDnsOk returns a tuple with the UpstreamDns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamDns

`func (o *DNSConfig) SetUpstreamDns(v []string)`

SetUpstreamDns sets UpstreamDns field to given value.

### HasUpstreamDns

`func (o *DNSConfig) HasUpstreamDns() bool`

HasUpstreamDns returns a boolean if a field has been set.

### GetUpstreamDnsFile

`func (o *DNSConfig) GetUpstreamDnsFile() string`

GetUpstreamDnsFile returns the UpstreamDnsFile field if non-nil, zero value otherwise.

### GetUpstreamDnsFileOk

`func (o *DNSConfig) GetUpstreamDnsFileOk() (*string, bool)`

GetUpstreamDnsFileOk returns a tuple with the UpstreamDnsFile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamDnsFile

`func (o *DNSConfig) SetUpstreamDnsFile(v string)`

SetUpstreamDnsFile sets UpstreamDnsFile field to given value.

### HasUpstreamDnsFile

`func (o *DNSConfig) HasUpstreamDnsFile() bool`

HasUpstreamDnsFile returns a boolean if a field has been set.

### GetProtectionEnabled

`func (o *DNSConfig) GetProtectionEnabled() bool`

GetProtectionEnabled returns the ProtectionEnabled field if non-nil, zero value otherwise.

### GetProtectionEnabledOk

`func (o *DNSConfig) GetProtectionEnabledOk() (*bool, bool)`

GetProtectionEnabledOk returns a tuple with the ProtectionEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtectionEnabled

`func (o *DNSConfig) SetProtectionEnabled(v bool)`

SetProtectionEnabled sets ProtectionEnabled field to given value.

### HasProtectionEnabled

`func (o *DNSConfig) HasProtectionEnabled() bool`

HasProtectionEnabled returns a boolean if a field has been set.

### GetDhcpAvailable

`func (o *DNSConfig) GetDhcpAvailable() bool`

GetDhcpAvailable returns the DhcpAvailable field if non-nil, zero value otherwise.

### GetDhcpAvailableOk

`func (o *DNSConfig) GetDhcpAvailableOk() (*bool, bool)`

GetDhcpAvailableOk returns a tuple with the DhcpAvailable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDhcpAvailable

`func (o *DNSConfig) SetDhcpAvailable(v bool)`

SetDhcpAvailable sets DhcpAvailable field to given value.

### HasDhcpAvailable

`func (o *DNSConfig) HasDhcpAvailable() bool`

HasDhcpAvailable returns a boolean if a field has been set.

### GetRatelimit

`func (o *DNSConfig) GetRatelimit() int32`

GetRatelimit returns the Ratelimit field if non-nil, zero value otherwise.

### GetRatelimitOk

`func (o *DNSConfig) GetRatelimitOk() (*int32, bool)`

GetRatelimitOk returns a tuple with the Ratelimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRatelimit

`func (o *DNSConfig) SetRatelimit(v int32)`

SetRatelimit sets Ratelimit field to given value.

### HasRatelimit

`func (o *DNSConfig) HasRatelimit() bool`

HasRatelimit returns a boolean if a field has been set.

### GetBlockingMode

`func (o *DNSConfig) GetBlockingMode() string`

GetBlockingMode returns the BlockingMode field if non-nil, zero value otherwise.

### GetBlockingModeOk

`func (o *DNSConfig) GetBlockingModeOk() (*string, bool)`

GetBlockingModeOk returns a tuple with the BlockingMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingMode

`func (o *DNSConfig) SetBlockingMode(v string)`

SetBlockingMode sets BlockingMode field to given value.

### HasBlockingMode

`func (o *DNSConfig) HasBlockingMode() bool`

HasBlockingMode returns a boolean if a field has been set.

### GetBlockingIpv4

`func (o *DNSConfig) GetBlockingIpv4() string`

GetBlockingIpv4 returns the BlockingIpv4 field if non-nil, zero value otherwise.

### GetBlockingIpv4Ok

`func (o *DNSConfig) GetBlockingIpv4Ok() (*string, bool)`

GetBlockingIpv4Ok returns a tuple with the BlockingIpv4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingIpv4

`func (o *DNSConfig) SetBlockingIpv4(v string)`

SetBlockingIpv4 sets BlockingIpv4 field to given value.

### HasBlockingIpv4

`func (o *DNSConfig) HasBlockingIpv4() bool`

HasBlockingIpv4 returns a boolean if a field has been set.

### GetBlockingIpv6

`func (o *DNSConfig) GetBlockingIpv6() string`

GetBlockingIpv6 returns the BlockingIpv6 field if non-nil, zero value otherwise.

### GetBlockingIpv6Ok

`func (o *DNSConfig) GetBlockingIpv6Ok() (*string, bool)`

GetBlockingIpv6Ok returns a tuple with the BlockingIpv6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockingIpv6

`func (o *DNSConfig) SetBlockingIpv6(v string)`

SetBlockingIpv6 sets BlockingIpv6 field to given value.

### HasBlockingIpv6

`func (o *DNSConfig) HasBlockingIpv6() bool`

HasBlockingIpv6 returns a boolean if a field has been set.

### GetEdnsCsEnabled

`func (o *DNSConfig) GetEdnsCsEnabled() bool`

GetEdnsCsEnabled returns the EdnsCsEnabled field if non-nil, zero value otherwise.

### GetEdnsCsEnabledOk

`func (o *DNSConfig) GetEdnsCsEnabledOk() (*bool, bool)`

GetEdnsCsEnabledOk returns a tuple with the EdnsCsEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEdnsCsEnabled

`func (o *DNSConfig) SetEdnsCsEnabled(v bool)`

SetEdnsCsEnabled sets EdnsCsEnabled field to given value.

### HasEdnsCsEnabled

`func (o *DNSConfig) HasEdnsCsEnabled() bool`

HasEdnsCsEnabled returns a boolean if a field has been set.

### GetDisableIpv6

`func (o *DNSConfig) GetDisableIpv6() bool`

GetDisableIpv6 returns the DisableIpv6 field if non-nil, zero value otherwise.

### GetDisableIpv6Ok

`func (o *DNSConfig) GetDisableIpv6Ok() (*bool, bool)`

GetDisableIpv6Ok returns a tuple with the DisableIpv6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableIpv6

`func (o *DNSConfig) SetDisableIpv6(v bool)`

SetDisableIpv6 sets DisableIpv6 field to given value.

### HasDisableIpv6

`func (o *DNSConfig) HasDisableIpv6() bool`

HasDisableIpv6 returns a boolean if a field has been set.

### GetDnssecEnabled

`func (o *DNSConfig) GetDnssecEnabled() bool`

GetDnssecEnabled returns the DnssecEnabled field if non-nil, zero value otherwise.

### GetDnssecEnabledOk

`func (o *DNSConfig) GetDnssecEnabledOk() (*bool, bool)`

GetDnssecEnabledOk returns a tuple with the DnssecEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnssecEnabled

`func (o *DNSConfig) SetDnssecEnabled(v bool)`

SetDnssecEnabled sets DnssecEnabled field to given value.

### HasDnssecEnabled

`func (o *DNSConfig) HasDnssecEnabled() bool`

HasDnssecEnabled returns a boolean if a field has been set.

### GetCacheSize

`func (o *DNSConfig) GetCacheSize() int32`

GetCacheSize returns the CacheSize field if non-nil, zero value otherwise.

### GetCacheSizeOk

`func (o *DNSConfig) GetCacheSizeOk() (*int32, bool)`

GetCacheSizeOk returns a tuple with the CacheSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheSize

`func (o *DNSConfig) SetCacheSize(v int32)`

SetCacheSize sets CacheSize field to given value.

### HasCacheSize

`func (o *DNSConfig) HasCacheSize() bool`

HasCacheSize returns a boolean if a field has been set.

### GetCacheTtlMin

`func (o *DNSConfig) GetCacheTtlMin() int32`

GetCacheTtlMin returns the CacheTtlMin field if non-nil, zero value otherwise.

### GetCacheTtlMinOk

`func (o *DNSConfig) GetCacheTtlMinOk() (*int32, bool)`

GetCacheTtlMinOk returns a tuple with the CacheTtlMin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheTtlMin

`func (o *DNSConfig) SetCacheTtlMin(v int32)`

SetCacheTtlMin sets CacheTtlMin field to given value.

### HasCacheTtlMin

`func (o *DNSConfig) HasCacheTtlMin() bool`

HasCacheTtlMin returns a boolean if a field has been set.

### GetCacheTtlMax

`func (o *DNSConfig) GetCacheTtlMax() int32`

GetCacheTtlMax returns the CacheTtlMax field if non-nil, zero value otherwise.

### GetCacheTtlMaxOk

`func (o *DNSConfig) GetCacheTtlMaxOk() (*int32, bool)`

GetCacheTtlMaxOk returns a tuple with the CacheTtlMax field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheTtlMax

`func (o *DNSConfig) SetCacheTtlMax(v int32)`

SetCacheTtlMax sets CacheTtlMax field to given value.

### HasCacheTtlMax

`func (o *DNSConfig) HasCacheTtlMax() bool`

HasCacheTtlMax returns a boolean if a field has been set.

### GetCacheOptimistic

`func (o *DNSConfig) GetCacheOptimistic() bool`

GetCacheOptimistic returns the CacheOptimistic field if non-nil, zero value otherwise.

### GetCacheOptimisticOk

`func (o *DNSConfig) GetCacheOptimisticOk() (*bool, bool)`

GetCacheOptimisticOk returns a tuple with the CacheOptimistic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCacheOptimistic

`func (o *DNSConfig) SetCacheOptimistic(v bool)`

SetCacheOptimistic sets CacheOptimistic field to given value.

### HasCacheOptimistic

`func (o *DNSConfig) HasCacheOptimistic() bool`

HasCacheOptimistic returns a boolean if a field has been set.

### GetUpstreamMode

`func (o *DNSConfig) GetUpstreamMode() string`

GetUpstreamMode returns the UpstreamMode field if non-nil, zero value otherwise.

### GetUpstreamModeOk

`func (o *DNSConfig) GetUpstreamModeOk() (*string, bool)`

GetUpstreamModeOk returns a tuple with the UpstreamMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpstreamMode

`func (o *DNSConfig) SetUpstreamMode(v string)`

SetUpstreamMode sets UpstreamMode field to given value.

### HasUpstreamMode

`func (o *DNSConfig) HasUpstreamMode() bool`

HasUpstreamMode returns a boolean if a field has been set.

### GetUsePrivatePtrResolvers

`func (o *DNSConfig) GetUsePrivatePtrResolvers() bool`

GetUsePrivatePtrResolvers returns the UsePrivatePtrResolvers field if non-nil, zero value otherwise.

### GetUsePrivatePtrResolversOk

`func (o *DNSConfig) GetUsePrivatePtrResolversOk() (*bool, bool)`

GetUsePrivatePtrResolversOk returns a tuple with the UsePrivatePtrResolvers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsePrivatePtrResolvers

`func (o *DNSConfig) SetUsePrivatePtrResolvers(v bool)`

SetUsePrivatePtrResolvers sets UsePrivatePtrResolvers field to given value.

### HasUsePrivatePtrResolvers

`func (o *DNSConfig) HasUsePrivatePtrResolvers() bool`

HasUsePrivatePtrResolvers returns a boolean if a field has been set.

### GetResolveClients

`func (o *DNSConfig) GetResolveClients() bool`

GetResolveClients returns the ResolveClients field if non-nil, zero value otherwise.

### GetResolveClientsOk

`func (o *DNSConfig) GetResolveClientsOk() (*bool, bool)`

GetResolveClientsOk returns a tuple with the ResolveClients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResolveClients

`func (o *DNSConfig) SetResolveClients(v bool)`

SetResolveClients sets ResolveClients field to given value.

### HasResolveClients

`func (o *DNSConfig) HasResolveClients() bool`

HasResolveClients returns a boolean if a field has been set.

### GetLocalPtrUpstreams

`func (o *DNSConfig) GetLocalPtrUpstreams() []string`

GetLocalPtrUpstreams returns the LocalPtrUpstreams field if non-nil, zero value otherwise.

### GetLocalPtrUpstreamsOk

`func (o *DNSConfig) GetLocalPtrUpstreamsOk() (*[]string, bool)`

GetLocalPtrUpstreamsOk returns a tuple with the LocalPtrUpstreams field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalPtrUpstreams

`func (o *DNSConfig) SetLocalPtrUpstreams(v []string)`

SetLocalPtrUpstreams sets LocalPtrUpstreams field to given value.

### HasLocalPtrUpstreams

`func (o *DNSConfig) HasLocalPtrUpstreams() bool`

HasLocalPtrUpstreams returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


