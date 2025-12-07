# ClientSeedDataUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | User ID | 
**Name** | **String** | User name | 
**Email** | **String** | User email | 

## Examples

- Prepare the resource
```powershell
$ClientSeedDataUser = Initialize-WatchtowrAPIClientSeedDataUser  -Id 1 `
 -Name John Doe `
 -Email john.doe@example.com
```

- Convert the resource to JSON
```powershell
$ClientSeedDataUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

