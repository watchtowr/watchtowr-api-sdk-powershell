# PaginatedClientPackageManager
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientPackageManager[]**](ClientPackageManager.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientPackageManager = Initialize-WatchtowrAPIPaginatedClientPackageManager  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientPackageManager | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

