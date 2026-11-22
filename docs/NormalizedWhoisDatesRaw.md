# NormalizedWhoisDatesRaw
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RegisteredAt** | **String** | Registration date as the source wrote it. | 
**UpdatedAt** | **String** | Last update date as the source wrote it. | 
**ExpiresAt** | **String** | Expiration date as the source wrote it. | 
**RegistrarExpiresAt** | **String** | Registrar expiration date as the source wrote it. | 
**RegistryUpdatedAt** | **String** | Registry database update as the source wrote it. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisDatesRaw = Initialize-WatchtowrAPINormalizedWhoisDatesRaw  -RegisteredAt 1995-08-14T04:00:00Z `
 -UpdatedAt null `
 -ExpiresAt null `
 -RegistrarExpiresAt null `
 -RegistryUpdatedAt null
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisDatesRaw | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

