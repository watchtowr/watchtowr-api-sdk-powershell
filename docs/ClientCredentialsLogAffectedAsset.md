# ClientCredentialsLogAffectedAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Asset ID | 
**Name** | **String** | Asset name | 
**Type** | **String** | Asset type | 

## Examples

- Prepare the resource
```powershell
$ClientCredentialsLogAffectedAsset = Initialize-WatchtowrAPIClientCredentialsLogAffectedAsset  -Id 123 `
 -Name example.com `
 -Type domain
```

- Convert the resource to JSON
```powershell
$ClientCredentialsLogAffectedAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

