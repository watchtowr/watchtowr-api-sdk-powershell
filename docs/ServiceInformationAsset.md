# ServiceInformationAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Asset name | 
**Type** | **String** | Asset type | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) | Business Unit | 

## Examples

- Prepare the resource
```powershell
$ServiceInformationAsset = Initialize-PSOpenAPIToolsServiceInformationAsset  -Id 1 `
 -Name 123.123.123.123 `
 -Type ip `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ServiceInformationAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

