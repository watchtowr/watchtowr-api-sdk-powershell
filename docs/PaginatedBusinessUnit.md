# PaginatedBusinessUnit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientBusinessUnitDetail[]**](ClientBusinessUnitDetail.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedBusinessUnit = Initialize-PSOpenAPIToolsPaginatedBusinessUnit  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedBusinessUnit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

