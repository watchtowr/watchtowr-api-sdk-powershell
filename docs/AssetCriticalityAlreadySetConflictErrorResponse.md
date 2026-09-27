# AssetCriticalityAlreadySetConflictErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 
**VarError** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AssetCriticalityAlreadySetConflictErrorResponse = Initialize-WatchtowrAPIAssetCriticalityAlreadySetConflictErrorResponse  -Message Criticality is already set to &#39;High&#39; for this asset. `
 -StatusCode 409 `
 -VarError Conflict
```

- Convert the resource to JSON
```powershell
$AssetCriticalityAlreadySetConflictErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

