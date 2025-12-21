# PaginatedClientAssetChangelog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientActivityLog[]**](ClientActivityLog.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientAssetChangelog = Initialize-WatchtowrAPIPaginatedClientAssetChangelog  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientAssetChangelog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

