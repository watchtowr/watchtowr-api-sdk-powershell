# ServiceInformationCertificate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**SubjectCommonName** | **String** | Subject Common Name | 
**SubjectOrganisation** | **String** | Subject Organisation | 
**SubjectAltNames** | **String[]** | Subject Alt Names | 
**SubjectCountry** | **String** | Subject Country | 
**IssuerCommonName** | **String** | Issuer CommonName | 
**IssuerOrganisation** | **String** | Issuer Organisation | 
**IssuerCountry** | **String** | Issuer Country | 
**Fingerprint** | **String** | Fingerprint | 
**PublicKeyInfoAlg** | **String** | PublicKeyInfoAlg | 
**PublicKeyInfoSize** | **String** | PublicKeyInfoSize | 
**Status** | **String** |  | 
**CreatedAt** | **System.DateTime** | Discovery date | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceInformationCertificate = Initialize-PSOpenAPIToolsServiceInformationCertificate  -Id 1 `
 -SubjectCommonName example.com `
 -SubjectOrganisation example `
 -SubjectAltNames [&quot;example.com&quot;] `
 -SubjectCountry SG `
 -IssuerCommonName example `
 -IssuerOrganisation example `
 -IssuerCountry SG `
 -Fingerprint example `
 -PublicKeyInfoAlg example `
 -PublicKeyInfoSize example `
 -Status Expired `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ServiceInformationCertificate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

