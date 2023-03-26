# InitialConfigurationBeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dns** | [**AddressInfoBeta**](AddressInfoBeta.md) |  | 
**Web** | [**AddressInfoBeta**](AddressInfoBeta.md) |  | 
**Username** | **string** | Basic auth username | 
**Password** | **string** | Basic auth password | 

## Methods

### NewInitialConfigurationBeta

`func NewInitialConfigurationBeta(dns AddressInfoBeta, web AddressInfoBeta, username string, password string, ) *InitialConfigurationBeta`

NewInitialConfigurationBeta instantiates a new InitialConfigurationBeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInitialConfigurationBetaWithDefaults

`func NewInitialConfigurationBetaWithDefaults() *InitialConfigurationBeta`

NewInitialConfigurationBetaWithDefaults instantiates a new InitialConfigurationBeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDns

`func (o *InitialConfigurationBeta) GetDns() AddressInfoBeta`

GetDns returns the Dns field if non-nil, zero value otherwise.

### GetDnsOk

`func (o *InitialConfigurationBeta) GetDnsOk() (*AddressInfoBeta, bool)`

GetDnsOk returns a tuple with the Dns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDns

`func (o *InitialConfigurationBeta) SetDns(v AddressInfoBeta)`

SetDns sets Dns field to given value.


### GetWeb

`func (o *InitialConfigurationBeta) GetWeb() AddressInfoBeta`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *InitialConfigurationBeta) GetWebOk() (*AddressInfoBeta, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *InitialConfigurationBeta) SetWeb(v AddressInfoBeta)`

SetWeb sets Web field to given value.


### GetUsername

`func (o *InitialConfigurationBeta) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *InitialConfigurationBeta) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *InitialConfigurationBeta) SetUsername(v string)`

SetUsername sets Username field to given value.


### GetPassword

`func (o *InitialConfigurationBeta) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *InitialConfigurationBeta) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *InitialConfigurationBeta) SetPassword(v string)`

SetPassword sets Password field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


