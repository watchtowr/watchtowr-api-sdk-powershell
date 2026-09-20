# ClientCredentialsLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Credential attempt log ID | 
**Technology** | **String** | Technology used | 
**RawAsset** | **String** | Raw asset string | 
**Status** | **String** | Attempt status | 
**AttemptedAt** | **String** | Date and time when the attempt was made | 
**Source** | **String** | Source of the credential attempt | 
**Credentials** | [**ClientCredentialsLogCredentials**](ClientCredentialsLogCredentials.md) | Credentials used in the attempt | 
**AffectedAsset** | [**ClientCredentialsLogAffectedAsset**](ClientCredentialsLogAffectedAsset.md) | Affected asset information | 
**FindingId** | **Decimal** | Finding ID if associated | 
**CreatedAt** | **String** | Creation date | 
**SourceMetadata** | [**SystemCollectionsHashtable**](.md) | Source metadata containing additional contextual information about the credential attempt | 

## Examples

- Prepare the resource
```powershell
$ClientCredentialsLog = Initialize-WatchtowrAPIClientCredentialsLog  -Id 123 `
 -Technology SSH `
 -RawAsset 192.168.1.1:22 `
 -Status successful `
 -AttemptedAt 2023-01-01T12:00:00.000Z `
 -Source Brute Force `
 -Credentials null `
 -AffectedAsset null `
 -FindingId 456 `
 -CreatedAt 2023-01-01T12:00:00.000Z `
 -SourceMetadata {&quot;ip&quot;:&quot;192.168.1.1&quot;,&quot;port&quot;:22,&quot;response_code&quot;:401,&quot;scan_id&quot;:&quot;abc123&quot;}
```

- Convert the resource to JSON
```powershell
$ClientCredentialsLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

