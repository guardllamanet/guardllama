# ServerStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsAddresses** | **[]string** |  | 
**DnsPort** | **int32** |  | 
**HttpPort** | **int32** |  | 
**ProtectionEnabled** | **bool** |  | 
**DhcpAvailable** | Pointer to **bool** |  | [optional] 
**Running** | **bool** |  | 
**Version** | **string** |  | 
**Language** | **string** |  | 

## Methods

### NewServerStatus

`func NewServerStatus(dnsAddresses []string, dnsPort int32, httpPort int32, protectionEnabled bool, running bool, version string, language string, ) *ServerStatus`

NewServerStatus instantiates a new ServerStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerStatusWithDefaults

`func NewServerStatusWithDefaults() *ServerStatus`

NewServerStatusWithDefaults instantiates a new ServerStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDnsAddresses

`func (o *ServerStatus) GetDnsAddresses() []string`

GetDnsAddresses returns the DnsAddresses field if non-nil, zero value otherwise.

### GetDnsAddressesOk

`func (o *ServerStatus) GetDnsAddressesOk() (*[]string, bool)`

GetDnsAddressesOk returns a tuple with the DnsAddresses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsAddresses

`func (o *ServerStatus) SetDnsAddresses(v []string)`

SetDnsAddresses sets DnsAddresses field to given value.


### GetDnsPort

`func (o *ServerStatus) GetDnsPort() int32`

GetDnsPort returns the DnsPort field if non-nil, zero value otherwise.

### GetDnsPortOk

`func (o *ServerStatus) GetDnsPortOk() (*int32, bool)`

GetDnsPortOk returns a tuple with the DnsPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsPort

`func (o *ServerStatus) SetDnsPort(v int32)`

SetDnsPort sets DnsPort field to given value.


### GetHttpPort

`func (o *ServerStatus) GetHttpPort() int32`

GetHttpPort returns the HttpPort field if non-nil, zero value otherwise.

### GetHttpPortOk

`func (o *ServerStatus) GetHttpPortOk() (*int32, bool)`

GetHttpPortOk returns a tuple with the HttpPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHttpPort

`func (o *ServerStatus) SetHttpPort(v int32)`

SetHttpPort sets HttpPort field to given value.


### GetProtectionEnabled

`func (o *ServerStatus) GetProtectionEnabled() bool`

GetProtectionEnabled returns the ProtectionEnabled field if non-nil, zero value otherwise.

### GetProtectionEnabledOk

`func (o *ServerStatus) GetProtectionEnabledOk() (*bool, bool)`

GetProtectionEnabledOk returns a tuple with the ProtectionEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtectionEnabled

`func (o *ServerStatus) SetProtectionEnabled(v bool)`

SetProtectionEnabled sets ProtectionEnabled field to given value.


### GetDhcpAvailable

`func (o *ServerStatus) GetDhcpAvailable() bool`

GetDhcpAvailable returns the DhcpAvailable field if non-nil, zero value otherwise.

### GetDhcpAvailableOk

`func (o *ServerStatus) GetDhcpAvailableOk() (*bool, bool)`

GetDhcpAvailableOk returns a tuple with the DhcpAvailable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDhcpAvailable

`func (o *ServerStatus) SetDhcpAvailable(v bool)`

SetDhcpAvailable sets DhcpAvailable field to given value.

### HasDhcpAvailable

`func (o *ServerStatus) HasDhcpAvailable() bool`

HasDhcpAvailable returns a boolean if a field has been set.

### GetRunning

`func (o *ServerStatus) GetRunning() bool`

GetRunning returns the Running field if non-nil, zero value otherwise.

### GetRunningOk

`func (o *ServerStatus) GetRunningOk() (*bool, bool)`

GetRunningOk returns a tuple with the Running field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunning

`func (o *ServerStatus) SetRunning(v bool)`

SetRunning sets Running field to given value.


### GetVersion

`func (o *ServerStatus) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *ServerStatus) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *ServerStatus) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetLanguage

`func (o *ServerStatus) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *ServerStatus) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *ServerStatus) SetLanguage(v string)`

SetLanguage sets Language field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


