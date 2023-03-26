# Login

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | User name | [optional] 
**Password** | Pointer to **string** | Password | [optional] 

## Methods

### NewLogin

`func NewLogin() *Login`

NewLogin instantiates a new Login object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLoginWithDefaults

`func NewLoginWithDefaults() *Login`

NewLoginWithDefaults instantiates a new Login object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *Login) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Login) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Login) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Login) HasName() bool`

HasName returns a boolean if a field has been set.

### GetPassword

`func (o *Login) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *Login) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *Login) SetPassword(v string)`

SetPassword sets Password field to given value.

### HasPassword

`func (o *Login) HasPassword() bool`

HasPassword returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


