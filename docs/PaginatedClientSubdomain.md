# PaginatedClientSubdomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientSubdomain[]**](ClientSubdomain.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientSubdomain = Initialize-PSOpenAPIToolsPaginatedClientSubdomain  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientSubdomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

