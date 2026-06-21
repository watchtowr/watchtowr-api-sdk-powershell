# AssetBusinessUnitDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Business Unit ID | 
**Name** | **String** | Business Unit Name | 

## Examples

- Prepare the resource
```powershell
$AssetBusinessUnitDto = Initialize-WatchtowrAPIAssetBusinessUnitDto  -Id 153 `
 -Name local bu child
```

- Convert the resource to JSON
```powershell
$AssetBusinessUnitDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

