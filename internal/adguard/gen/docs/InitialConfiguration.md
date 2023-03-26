# InitialConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dns** | [**AddressInfo**](AddressInfo.md) |  | 
**Web** | [**AddressInfo**](AddressInfo.md) |  | 
**Username** | **string** | Basic auth username | 
**Password** | **string** | Basic auth password | 

## Methods

### NewInitialConfiguration

`func NewInitialConfiguration(dns AddressInfo, web AddressInfo, username string, password string, ) *InitialConfiguration`

NewInitialConfiguration instantiates a new InitialConfiguration object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInitialConfigurationWithDefaults

`func NewInitialConfigurationWithDefaults() *InitialConfiguration`

NewInitialConfigurationWithDefaults instantiates a new InitialConfiguration object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDns

`func (o *InitialConfiguration) GetDns() AddressInfo`

GetDns returns the Dns field if non-nil, zero value otherwise.

### GetDnsOk

`func (o *InitialConfiguration) GetDnsOk() (*AddressInfo, bool)`

GetDnsOk returns a tuple with the Dns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDns

`func (o *InitialConfiguration) SetDns(v AddressInfo)`

SetDns sets Dns field to given value.


### GetWeb

`func (o *InitialConfiguration) GetWeb() AddressInfo`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *InitialConfiguration) GetWebOk() (*AddressInfo, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *InitialConfiguration) SetWeb(v AddressInfo)`

SetWeb sets Web field to given value.


### GetUsername

`func (o *InitialConfiguration) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *InitialConfiguration) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *InitialConfiguration) SetUsername(v string)`

SetUsername sets Username field to given value.


### GetPassword

`func (o *InitialConfiguration) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *InitialConfiguration) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *InitialConfiguration) SetPassword(v string)`

SetPassword sets Password field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


