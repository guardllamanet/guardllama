# DhcpLease

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mac** | **string** |  | 
**Ip** | **string** |  | 
**Hostname** | **string** |  | 
**Expires** | **string** |  | 

## Methods

### NewDhcpLease

`func NewDhcpLease(mac string, ip string, hostname string, expires string, ) *DhcpLease`

NewDhcpLease instantiates a new DhcpLease object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpLeaseWithDefaults

`func NewDhcpLeaseWithDefaults() *DhcpLease`

NewDhcpLeaseWithDefaults instantiates a new DhcpLease object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMac

`func (o *DhcpLease) GetMac() string`

GetMac returns the Mac field if non-nil, zero value otherwise.

### GetMacOk

`func (o *DhcpLease) GetMacOk() (*string, bool)`

GetMacOk returns a tuple with the Mac field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMac

`func (o *DhcpLease) SetMac(v string)`

SetMac sets Mac field to given value.


### GetIp

`func (o *DhcpLease) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *DhcpLease) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *DhcpLease) SetIp(v string)`

SetIp sets Ip field to given value.


### GetHostname

`func (o *DhcpLease) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *DhcpLease) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *DhcpLease) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetExpires

`func (o *DhcpLease) GetExpires() string`

GetExpires returns the Expires field if non-nil, zero value otherwise.

### GetExpiresOk

`func (o *DhcpLease) GetExpiresOk() (*string, bool)`

GetExpiresOk returns a tuple with the Expires field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpires

`func (o *DhcpLease) SetExpires(v string)`

SetExpires sets Expires field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


