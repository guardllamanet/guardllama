# CheckConfigResponseInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** |  | [default to ""]
**CanAutofix** | **bool** |  | 

## Methods

### NewCheckConfigResponseInfo

`func NewCheckConfigResponseInfo(status string, canAutofix bool, ) *CheckConfigResponseInfo`

NewCheckConfigResponseInfo instantiates a new CheckConfigResponseInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckConfigResponseInfoWithDefaults

`func NewCheckConfigResponseInfoWithDefaults() *CheckConfigResponseInfo`

NewCheckConfigResponseInfoWithDefaults instantiates a new CheckConfigResponseInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *CheckConfigResponseInfo) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CheckConfigResponseInfo) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CheckConfigResponseInfo) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetCanAutofix

`func (o *CheckConfigResponseInfo) GetCanAutofix() bool`

GetCanAutofix returns the CanAutofix field if non-nil, zero value otherwise.

### GetCanAutofixOk

`func (o *CheckConfigResponseInfo) GetCanAutofixOk() (*bool, bool)`

GetCanAutofixOk returns a tuple with the CanAutofix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAutofix

`func (o *CheckConfigResponseInfo) SetCanAutofix(v bool)`

SetCanAutofix sets CanAutofix field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


