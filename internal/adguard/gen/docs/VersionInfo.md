# VersionInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **bool** | If true then other fields doesn&#39;t appear.  | 
**NewVersion** | Pointer to **string** |  | [optional] 
**Announcement** | Pointer to **string** |  | [optional] 
**AnnouncementUrl** | Pointer to **string** |  | [optional] 
**CanAutoupdate** | Pointer to **bool** |  | [optional] 

## Methods

### NewVersionInfo

`func NewVersionInfo(disabled bool, ) *VersionInfo`

NewVersionInfo instantiates a new VersionInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVersionInfoWithDefaults

`func NewVersionInfoWithDefaults() *VersionInfo`

NewVersionInfoWithDefaults instantiates a new VersionInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDisabled

`func (o *VersionInfo) GetDisabled() bool`

GetDisabled returns the Disabled field if non-nil, zero value otherwise.

### GetDisabledOk

`func (o *VersionInfo) GetDisabledOk() (*bool, bool)`

GetDisabledOk returns a tuple with the Disabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabled

`func (o *VersionInfo) SetDisabled(v bool)`

SetDisabled sets Disabled field to given value.


### GetNewVersion

`func (o *VersionInfo) GetNewVersion() string`

GetNewVersion returns the NewVersion field if non-nil, zero value otherwise.

### GetNewVersionOk

`func (o *VersionInfo) GetNewVersionOk() (*string, bool)`

GetNewVersionOk returns a tuple with the NewVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewVersion

`func (o *VersionInfo) SetNewVersion(v string)`

SetNewVersion sets NewVersion field to given value.

### HasNewVersion

`func (o *VersionInfo) HasNewVersion() bool`

HasNewVersion returns a boolean if a field has been set.

### GetAnnouncement

`func (o *VersionInfo) GetAnnouncement() string`

GetAnnouncement returns the Announcement field if non-nil, zero value otherwise.

### GetAnnouncementOk

`func (o *VersionInfo) GetAnnouncementOk() (*string, bool)`

GetAnnouncementOk returns a tuple with the Announcement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnnouncement

`func (o *VersionInfo) SetAnnouncement(v string)`

SetAnnouncement sets Announcement field to given value.

### HasAnnouncement

`func (o *VersionInfo) HasAnnouncement() bool`

HasAnnouncement returns a boolean if a field has been set.

### GetAnnouncementUrl

`func (o *VersionInfo) GetAnnouncementUrl() string`

GetAnnouncementUrl returns the AnnouncementUrl field if non-nil, zero value otherwise.

### GetAnnouncementUrlOk

`func (o *VersionInfo) GetAnnouncementUrlOk() (*string, bool)`

GetAnnouncementUrlOk returns a tuple with the AnnouncementUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnnouncementUrl

`func (o *VersionInfo) SetAnnouncementUrl(v string)`

SetAnnouncementUrl sets AnnouncementUrl field to given value.

### HasAnnouncementUrl

`func (o *VersionInfo) HasAnnouncementUrl() bool`

HasAnnouncementUrl returns a boolean if a field has been set.

### GetCanAutoupdate

`func (o *VersionInfo) GetCanAutoupdate() bool`

GetCanAutoupdate returns the CanAutoupdate field if non-nil, zero value otherwise.

### GetCanAutoupdateOk

`func (o *VersionInfo) GetCanAutoupdateOk() (*bool, bool)`

GetCanAutoupdateOk returns a tuple with the CanAutoupdate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanAutoupdate

`func (o *VersionInfo) SetCanAutoupdate(v bool)`

SetCanAutoupdate sets CanAutoupdate field to given value.

### HasCanAutoupdate

`func (o *VersionInfo) HasCanAutoupdate() bool`

HasCanAutoupdate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


