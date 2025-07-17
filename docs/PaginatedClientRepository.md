# PaginatedClientRepository
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientRepository[]**](ClientRepository.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientRepository = Initialize-PSOpenAPIToolsPaginatedClientRepository  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientRepository | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

