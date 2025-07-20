# ClientPendingDomainWhoisData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Raw** | **String** | Raw WHOIS data | 
**VarData** | [**SystemCollectionsHashtable**](.md) | Formatted WHOIS data | 

## Examples

- Prepare the resource
```powershell
$ClientPendingDomainWhoisData = Initialize-WatchtowrAPIClientPendingDomainWhoisData  -Raw Domain Name: example.com
Registrar: Example Registrar `
 -VarData {&quot;domainName&quot;:&quot;example.com&quot;,&quot;registrar&quot;:&quot;Example Registrar&quot;,&quot;creationDate&quot;:&quot;2020-01-01T00:00:00.000Z&quot;}
```

- Convert the resource to JSON
```powershell
$ClientPendingDomainWhoisData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

