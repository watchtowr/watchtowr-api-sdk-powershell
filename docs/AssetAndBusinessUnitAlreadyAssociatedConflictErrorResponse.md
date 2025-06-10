# AssetAndBusinessUnitAlreadyAssociatedConflictErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 
**VarError** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AssetAndBusinessUnitAlreadyAssociatedConflictErrorResponse = Initialize-PSOpenAPIToolsAssetAndBusinessUnitAlreadyAssociatedConflictErrorResponse  -Message Asset is already assigned with business unit ID(s) [1, 2] `
 -StatusCode 409 `
 -VarError Conflict
```

- Convert the resource to JSON
```powershell
$AssetAndBusinessUnitAlreadyAssociatedConflictErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

