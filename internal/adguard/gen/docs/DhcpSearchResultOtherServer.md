# DhcpSearchResultOtherServer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Found** | Pointer to **string** | The result of searching the other DHCP server.  | [optional] 
**Error** | Pointer to **string** | Set if found&#x3D;error | [optional] 

## Methods

### NewDhcpSearchResultOtherServer

`func NewDhcpSearchResultOtherServer() *DhcpSearchResultOtherServer`

NewDhcpSearchResultOtherServer instantiates a new DhcpSearchResultOtherServer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDhcpSearchResultOtherServerWithDefaults

`func NewDhcpSearchResultOtherServerWithDefaults() *DhcpSearchResultOtherServer`

NewDhcpSearchResultOtherServerWithDefaults instantiates a new DhcpSearchResultOtherServer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFound

`func (o *DhcpSearchResultOtherServer) GetFound() string`

GetFound returns the Found field if non-nil, zero value otherwise.

### GetFoundOk

`func (o *DhcpSearchResultOtherServer) GetFoundOk() (*string, bool)`

GetFoundOk returns a tuple with the Found field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFound

`func (o *DhcpSearchResultOtherServer) SetFound(v string)`

SetFound sets Found field to given value.

### HasFound

`func (o *DhcpSearchResultOtherServer) HasFound() bool`

HasFound returns a boolean if a field has been set.

### GetError

`func (o *DhcpSearchResultOtherServer) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *DhcpSearchResultOtherServer) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *DhcpSearchResultOtherServer) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *DhcpSearchResultOtherServer) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


