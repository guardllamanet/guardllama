# GetVersionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecheckNow** | Pointer to **bool** | If false, server will check for a new version data only once in several hours.  | [optional] 

## Methods

### NewGetVersionRequest

`func NewGetVersionRequest() *GetVersionRequest`

NewGetVersionRequest instantiates a new GetVersionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetVersionRequestWithDefaults

`func NewGetVersionRequestWithDefaults() *GetVersionRequest`

NewGetVersionRequestWithDefaults instantiates a new GetVersionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRecheckNow

`func (o *GetVersionRequest) GetRecheckNow() bool`

GetRecheckNow returns the RecheckNow field if non-nil, zero value otherwise.

### GetRecheckNowOk

`func (o *GetVersionRequest) GetRecheckNowOk() (*bool, bool)`

GetRecheckNowOk returns a tuple with the RecheckNow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecheckNow

`func (o *GetVersionRequest) SetRecheckNow(v bool)`

SetRecheckNow sets RecheckNow field to given value.

### HasRecheckNow

`func (o *GetVersionRequest) HasRecheckNow() bool`

HasRecheckNow returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


