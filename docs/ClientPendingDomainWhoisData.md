# ClientPendingDomainWhoisData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Raw** | **String** | Raw WHOIS data | 
**VarData** | [**SystemCollectionsHashtable**](.md) | Formatted WHOIS data | 
**Normalized** | [**NormalizedWhoisDomain**](NormalizedWhoisDomain.md) | Structured, best-effort reading of the WHOIS record (schema version 1). Returned only when it is enabled for your tenant. Null when the record is not structured yet. WHOIS has no standard format: &#x60;raw&#x60; stays the reference. | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientPendingDomainWhoisData = Initialize-WatchtowrAPIClientPendingDomainWhoisData  -Raw Domain Name: example.com
Registrar: Example Registrar `
 -VarData {&quot;domainName&quot;:&quot;example.com&quot;,&quot;registrar&quot;:&quot;Example Registrar&quot;,&quot;creationDate&quot;:&quot;2020-01-01T00:00:00.000Z&quot;} `
 -Normalized null
```

- Convert the resource to JSON
```powershell
$ClientPendingDomainWhoisData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

