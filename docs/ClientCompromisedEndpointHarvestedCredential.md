# ClientCompromisedEndpointHarvestedCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Harvested credential ID | 
**Type** | **String** | Credential type | 
**Url** | **String** | URL associated with the credential | 
**Username** | **String** | Username | 
**CompromisedEndpointId** | **Decimal** | Compromised endpoint ID | 
**CreatedAt** | **String** | Creation timestamp | 
**UpdatedAt** | **String** | Last update timestamp | 

## Examples

- Prepare the resource
```powershell
$ClientCompromisedEndpointHarvestedCredential = Initialize-WatchtowrAPIClientCompromisedEndpointHarvestedCredential  -Id 1 `
 -Type password `
 -Url https://example.com `
 -Username user@example.com `
 -CompromisedEndpointId 123 `
 -CreatedAt 2023-01-01T12:00:00.000Z `
 -UpdatedAt 2023-01-02T12:00:00.000Z
```

- Convert the resource to JSON
```powershell
$ClientCompromisedEndpointHarvestedCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

