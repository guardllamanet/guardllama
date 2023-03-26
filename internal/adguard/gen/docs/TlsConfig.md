# TlsConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** | enabled is the encryption (DoT/DoH/HTTPS) status | [optional] 
**ServerName** | Pointer to **string** | server_name is the hostname of your HTTPS/TLS server | [optional] 
**ForceHttps** | Pointer to **bool** | if true, forces HTTP-&gt;HTTPS redirect | [optional] 
**PortHttps** | Pointer to **int32** | HTTPS port. If 0, HTTPS will be disabled. | [optional] 
**PortDnsOverTls** | Pointer to **int32** | DNS-over-TLS port. If 0, DoT will be disabled. | [optional] 
**PortDnsOverQuic** | Pointer to **int32** | DNS-over-QUIC port. If 0, DoQ will be disabled. | [optional] 
**CertificateChain** | Pointer to **string** | Base64 string with PEM-encoded certificates chain | [optional] 
**PrivateKey** | Pointer to **string** | Base64 string with PEM-encoded private key | [optional] 
**PrivateKeySaved** | Pointer to **bool** | Set to true if the user has previously saved a private key as a string.  This is used so that the server and the client don&#39;t have to send the private key between each other every time, which might lead to security issues.  | [optional] 
**CertificatePath** | Pointer to **string** | Path to certificate file | [optional] 
**PrivateKeyPath** | Pointer to **string** | Path to private key file | [optional] 
**ValidCert** | Pointer to **bool** | Set to true if the specified certificates chain is a valid chain of X509 certificates.  | [optional] 
**ValidChain** | Pointer to **bool** | Set to true if the specified certificates chain is verified and issued by a known CA.  | [optional] 
**Subject** | Pointer to **string** | The subject of the first certificate in the chain. | [optional] 
**Issuer** | Pointer to **string** | The issuer of the first certificate in the chain. | [optional] 
**NotBefore** | Pointer to **string** | The NotBefore field of the first certificate in the chain.  | [optional] 
**NotAfter** | Pointer to **string** | The NotAfter field of the first certificate in the chain.  | [optional] 
**DnsNames** | Pointer to **[]string** | The value of SubjectAltNames field of the first certificate in the chain.  | [optional] 
**ValidKey** | Pointer to **bool** | Set to true if the key is a valid private key. | [optional] 
**KeyType** | Pointer to **string** | Key type. | [optional] 
**WarningValidation** | Pointer to **string** | A validation warning message with the issue description.  | [optional] 
**ValidPair** | Pointer to **bool** | Set to true if both certificate and private key are correct.  | [optional] 

## Methods

### NewTlsConfig

`func NewTlsConfig() *TlsConfig`

NewTlsConfig instantiates a new TlsConfig object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTlsConfigWithDefaults

`func NewTlsConfigWithDefaults() *TlsConfig`

NewTlsConfigWithDefaults instantiates a new TlsConfig object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *TlsConfig) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *TlsConfig) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *TlsConfig) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *TlsConfig) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetServerName

`func (o *TlsConfig) GetServerName() string`

GetServerName returns the ServerName field if non-nil, zero value otherwise.

### GetServerNameOk

`func (o *TlsConfig) GetServerNameOk() (*string, bool)`

GetServerNameOk returns a tuple with the ServerName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerName

`func (o *TlsConfig) SetServerName(v string)`

SetServerName sets ServerName field to given value.

### HasServerName

`func (o *TlsConfig) HasServerName() bool`

HasServerName returns a boolean if a field has been set.

### GetForceHttps

`func (o *TlsConfig) GetForceHttps() bool`

GetForceHttps returns the ForceHttps field if non-nil, zero value otherwise.

### GetForceHttpsOk

`func (o *TlsConfig) GetForceHttpsOk() (*bool, bool)`

GetForceHttpsOk returns a tuple with the ForceHttps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForceHttps

`func (o *TlsConfig) SetForceHttps(v bool)`

SetForceHttps sets ForceHttps field to given value.

### HasForceHttps

`func (o *TlsConfig) HasForceHttps() bool`

HasForceHttps returns a boolean if a field has been set.

### GetPortHttps

`func (o *TlsConfig) GetPortHttps() int32`

GetPortHttps returns the PortHttps field if non-nil, zero value otherwise.

### GetPortHttpsOk

`func (o *TlsConfig) GetPortHttpsOk() (*int32, bool)`

GetPortHttpsOk returns a tuple with the PortHttps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortHttps

`func (o *TlsConfig) SetPortHttps(v int32)`

SetPortHttps sets PortHttps field to given value.

### HasPortHttps

`func (o *TlsConfig) HasPortHttps() bool`

HasPortHttps returns a boolean if a field has been set.

### GetPortDnsOverTls

`func (o *TlsConfig) GetPortDnsOverTls() int32`

GetPortDnsOverTls returns the PortDnsOverTls field if non-nil, zero value otherwise.

### GetPortDnsOverTlsOk

`func (o *TlsConfig) GetPortDnsOverTlsOk() (*int32, bool)`

GetPortDnsOverTlsOk returns a tuple with the PortDnsOverTls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortDnsOverTls

`func (o *TlsConfig) SetPortDnsOverTls(v int32)`

SetPortDnsOverTls sets PortDnsOverTls field to given value.

### HasPortDnsOverTls

`func (o *TlsConfig) HasPortDnsOverTls() bool`

HasPortDnsOverTls returns a boolean if a field has been set.

### GetPortDnsOverQuic

`func (o *TlsConfig) GetPortDnsOverQuic() int32`

GetPortDnsOverQuic returns the PortDnsOverQuic field if non-nil, zero value otherwise.

### GetPortDnsOverQuicOk

`func (o *TlsConfig) GetPortDnsOverQuicOk() (*int32, bool)`

GetPortDnsOverQuicOk returns a tuple with the PortDnsOverQuic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortDnsOverQuic

`func (o *TlsConfig) SetPortDnsOverQuic(v int32)`

SetPortDnsOverQuic sets PortDnsOverQuic field to given value.

### HasPortDnsOverQuic

`func (o *TlsConfig) HasPortDnsOverQuic() bool`

HasPortDnsOverQuic returns a boolean if a field has been set.

### GetCertificateChain

`func (o *TlsConfig) GetCertificateChain() string`

GetCertificateChain returns the CertificateChain field if non-nil, zero value otherwise.

### GetCertificateChainOk

`func (o *TlsConfig) GetCertificateChainOk() (*string, bool)`

GetCertificateChainOk returns a tuple with the CertificateChain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCertificateChain

`func (o *TlsConfig) SetCertificateChain(v string)`

SetCertificateChain sets CertificateChain field to given value.

### HasCertificateChain

`func (o *TlsConfig) HasCertificateChain() bool`

HasCertificateChain returns a boolean if a field has been set.

### GetPrivateKey

`func (o *TlsConfig) GetPrivateKey() string`

GetPrivateKey returns the PrivateKey field if non-nil, zero value otherwise.

### GetPrivateKeyOk

`func (o *TlsConfig) GetPrivateKeyOk() (*string, bool)`

GetPrivateKeyOk returns a tuple with the PrivateKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivateKey

`func (o *TlsConfig) SetPrivateKey(v string)`

SetPrivateKey sets PrivateKey field to given value.

### HasPrivateKey

`func (o *TlsConfig) HasPrivateKey() bool`

HasPrivateKey returns a boolean if a field has been set.

### GetPrivateKeySaved

`func (o *TlsConfig) GetPrivateKeySaved() bool`

GetPrivateKeySaved returns the PrivateKeySaved field if non-nil, zero value otherwise.

### GetPrivateKeySavedOk

`func (o *TlsConfig) GetPrivateKeySavedOk() (*bool, bool)`

GetPrivateKeySavedOk returns a tuple with the PrivateKeySaved field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivateKeySaved

`func (o *TlsConfig) SetPrivateKeySaved(v bool)`

SetPrivateKeySaved sets PrivateKeySaved field to given value.

### HasPrivateKeySaved

`func (o *TlsConfig) HasPrivateKeySaved() bool`

HasPrivateKeySaved returns a boolean if a field has been set.

### GetCertificatePath

`func (o *TlsConfig) GetCertificatePath() string`

GetCertificatePath returns the CertificatePath field if non-nil, zero value otherwise.

### GetCertificatePathOk

`func (o *TlsConfig) GetCertificatePathOk() (*string, bool)`

GetCertificatePathOk returns a tuple with the CertificatePath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCertificatePath

`func (o *TlsConfig) SetCertificatePath(v string)`

SetCertificatePath sets CertificatePath field to given value.

### HasCertificatePath

`func (o *TlsConfig) HasCertificatePath() bool`

HasCertificatePath returns a boolean if a field has been set.

### GetPrivateKeyPath

`func (o *TlsConfig) GetPrivateKeyPath() string`

GetPrivateKeyPath returns the PrivateKeyPath field if non-nil, zero value otherwise.

### GetPrivateKeyPathOk

`func (o *TlsConfig) GetPrivateKeyPathOk() (*string, bool)`

GetPrivateKeyPathOk returns a tuple with the PrivateKeyPath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivateKeyPath

`func (o *TlsConfig) SetPrivateKeyPath(v string)`

SetPrivateKeyPath sets PrivateKeyPath field to given value.

### HasPrivateKeyPath

`func (o *TlsConfig) HasPrivateKeyPath() bool`

HasPrivateKeyPath returns a boolean if a field has been set.

### GetValidCert

`func (o *TlsConfig) GetValidCert() bool`

GetValidCert returns the ValidCert field if non-nil, zero value otherwise.

### GetValidCertOk

`func (o *TlsConfig) GetValidCertOk() (*bool, bool)`

GetValidCertOk returns a tuple with the ValidCert field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidCert

`func (o *TlsConfig) SetValidCert(v bool)`

SetValidCert sets ValidCert field to given value.

### HasValidCert

`func (o *TlsConfig) HasValidCert() bool`

HasValidCert returns a boolean if a field has been set.

### GetValidChain

`func (o *TlsConfig) GetValidChain() bool`

GetValidChain returns the ValidChain field if non-nil, zero value otherwise.

### GetValidChainOk

`func (o *TlsConfig) GetValidChainOk() (*bool, bool)`

GetValidChainOk returns a tuple with the ValidChain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidChain

`func (o *TlsConfig) SetValidChain(v bool)`

SetValidChain sets ValidChain field to given value.

### HasValidChain

`func (o *TlsConfig) HasValidChain() bool`

HasValidChain returns a boolean if a field has been set.

### GetSubject

`func (o *TlsConfig) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *TlsConfig) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *TlsConfig) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *TlsConfig) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetIssuer

`func (o *TlsConfig) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *TlsConfig) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *TlsConfig) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *TlsConfig) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetNotBefore

`func (o *TlsConfig) GetNotBefore() string`

GetNotBefore returns the NotBefore field if non-nil, zero value otherwise.

### GetNotBeforeOk

`func (o *TlsConfig) GetNotBeforeOk() (*string, bool)`

GetNotBeforeOk returns a tuple with the NotBefore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotBefore

`func (o *TlsConfig) SetNotBefore(v string)`

SetNotBefore sets NotBefore field to given value.

### HasNotBefore

`func (o *TlsConfig) HasNotBefore() bool`

HasNotBefore returns a boolean if a field has been set.

### GetNotAfter

`func (o *TlsConfig) GetNotAfter() string`

GetNotAfter returns the NotAfter field if non-nil, zero value otherwise.

### GetNotAfterOk

`func (o *TlsConfig) GetNotAfterOk() (*string, bool)`

GetNotAfterOk returns a tuple with the NotAfter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotAfter

`func (o *TlsConfig) SetNotAfter(v string)`

SetNotAfter sets NotAfter field to given value.

### HasNotAfter

`func (o *TlsConfig) HasNotAfter() bool`

HasNotAfter returns a boolean if a field has been set.

### GetDnsNames

`func (o *TlsConfig) GetDnsNames() []string`

GetDnsNames returns the DnsNames field if non-nil, zero value otherwise.

### GetDnsNamesOk

`func (o *TlsConfig) GetDnsNamesOk() (*[]string, bool)`

GetDnsNamesOk returns a tuple with the DnsNames field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDnsNames

`func (o *TlsConfig) SetDnsNames(v []string)`

SetDnsNames sets DnsNames field to given value.

### HasDnsNames

`func (o *TlsConfig) HasDnsNames() bool`

HasDnsNames returns a boolean if a field has been set.

### GetValidKey

`func (o *TlsConfig) GetValidKey() bool`

GetValidKey returns the ValidKey field if non-nil, zero value otherwise.

### GetValidKeyOk

`func (o *TlsConfig) GetValidKeyOk() (*bool, bool)`

GetValidKeyOk returns a tuple with the ValidKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidKey

`func (o *TlsConfig) SetValidKey(v bool)`

SetValidKey sets ValidKey field to given value.

### HasValidKey

`func (o *TlsConfig) HasValidKey() bool`

HasValidKey returns a boolean if a field has been set.

### GetKeyType

`func (o *TlsConfig) GetKeyType() string`

GetKeyType returns the KeyType field if non-nil, zero value otherwise.

### GetKeyTypeOk

`func (o *TlsConfig) GetKeyTypeOk() (*string, bool)`

GetKeyTypeOk returns a tuple with the KeyType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyType

`func (o *TlsConfig) SetKeyType(v string)`

SetKeyType sets KeyType field to given value.

### HasKeyType

`func (o *TlsConfig) HasKeyType() bool`

HasKeyType returns a boolean if a field has been set.

### GetWarningValidation

`func (o *TlsConfig) GetWarningValidation() string`

GetWarningValidation returns the WarningValidation field if non-nil, zero value otherwise.

### GetWarningValidationOk

`func (o *TlsConfig) GetWarningValidationOk() (*string, bool)`

GetWarningValidationOk returns a tuple with the WarningValidation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarningValidation

`func (o *TlsConfig) SetWarningValidation(v string)`

SetWarningValidation sets WarningValidation field to given value.

### HasWarningValidation

`func (o *TlsConfig) HasWarningValidation() bool`

HasWarningValidation returns a boolean if a field has been set.

### GetValidPair

`func (o *TlsConfig) GetValidPair() bool`

GetValidPair returns the ValidPair field if non-nil, zero value otherwise.

### GetValidPairOk

`func (o *TlsConfig) GetValidPairOk() (*bool, bool)`

GetValidPairOk returns a tuple with the ValidPair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidPair

`func (o *TlsConfig) SetValidPair(v bool)`

SetValidPair sets ValidPair field to given value.

### HasValidPair

`func (o *TlsConfig) HasValidPair() bool`

HasValidPair returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


