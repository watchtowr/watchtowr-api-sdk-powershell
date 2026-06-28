# ServiceInformationCertificate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**SubjectCommonName** | **String** | Subject Common Name | 
**SubjectOrganisation** | **String** | Subject Organization | 
**SubjectAltNames** | **String[]** | Subject Alt Names | 
**SubjectCountry** | **String** | Subject Country | 
**IssuerCommonName** | **String** | Issuer CommonName | 
**IssuerOrganisation** | **String** | Issuer Organization | 
**IssuerCountry** | **String** | Issuer Country | 
**Fingerprint** | **String** | Fingerprint | 
**SerialNumber** | **String** | Certificate serial number | 
**PublicKeyInfoAlg** | **String** | PublicKeyInfoAlg | 
**PublicKeyInfoSize** | **Decimal** | PublicKeyInfoSize | 
**Status** | **String** |  | 
**IssuedByStatus** | **String** | Trust provenance of the certificate issuer as classified upstream | 
**CreatedAt** | **System.DateTime** | Discovery date | [optional] 
**UpdatedAt** | **System.DateTime** | Last update timestamp | [optional] 
**NotBefore** | **System.DateTime** | Certificate validity start | 
**NotAfter** | **System.DateTime** | Certificate expiry | 
**LastSeenAt** | **System.DateTime** | Last time the certificate was observed on the linked port | 

## Examples

- Prepare the resource
```powershell
$ServiceInformationCertificate = Initialize-WatchtowrAPIServiceInformationCertificate  -Id 1 `
 -SubjectCommonName example.com `
 -SubjectOrganisation example `
 -SubjectAltNames [&quot;example.com&quot;] `
 -SubjectCountry SG `
 -IssuerCommonName example `
 -IssuerOrganisation example `
 -IssuerCountry SG `
 -Fingerprint example `
 -SerialNumber 03:e5:6f:... `
 -PublicKeyInfoAlg example `
 -PublicKeyInfoSize 2048 `
 -Status Expired `
 -IssuedByStatus self_signed `
 -CreatedAt 2022-02-22T22:00Z `
 -UpdatedAt 2022-02-22T22:00Z `
 -NotBefore 2022-01-01T00:00Z `
 -NotAfter 2026-04-01T00:00Z `
 -LastSeenAt 2022-02-22T22:00Z
```

- Convert the resource to JSON
```powershell
$ServiceInformationCertificate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

