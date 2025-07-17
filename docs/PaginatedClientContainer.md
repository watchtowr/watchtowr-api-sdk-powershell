# PaginatedClientContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientContainer[]**](ClientContainer.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientContainer = Initialize-PSOpenAPIToolsPaginatedClientContainer  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

