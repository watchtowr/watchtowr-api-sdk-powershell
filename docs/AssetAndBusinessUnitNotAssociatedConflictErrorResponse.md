# AssetAndBusinessUnitNotAssociatedConflictErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 
**VarError** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AssetAndBusinessUnitNotAssociatedConflictErrorResponse = Initialize-WatchtowrAPIAssetAndBusinessUnitNotAssociatedConflictErrorResponse  -Message Asset is currently not assigned with business unit ID(s) [2, 3] `
 -StatusCode 409 `
 -VarError Conflict
```

- Convert the resource to JSON
```powershell
$AssetAndBusinessUnitNotAssociatedConflictErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

