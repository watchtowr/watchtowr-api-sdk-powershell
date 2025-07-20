# ClientPendingDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Domain ID | 
**Status** | **String** | Domain status | 
**Name** | **String** | Domain name | 
**Source** | **String** | Source that discovered the domain | 
**CreatedAt** | **System.DateTime** | Creation date | 
**WhoisData** | [**ClientPendingDomainWhoisData**](ClientPendingDomainWhoisData.md) | WHOIS data for the domain | 

## Examples

- Prepare the resource
```powershell
$ClientPendingDomain = Initialize-WatchtowrAPIClientPendingDomain  -Id 456 `
 -Status pending `
 -Name example.com `
 -Source example-source `
 -CreatedAt 2023-01-01T12:00Z `
 -WhoisData null
```

- Convert the resource to JSON
```powershell
$ClientPendingDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

