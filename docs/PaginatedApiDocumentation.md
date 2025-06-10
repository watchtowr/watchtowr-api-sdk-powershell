# PaginatedApiDocumentation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientApiDocumentationAsset[]**](ClientApiDocumentationAsset.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedApiDocumentation = Initialize-PSOpenAPIToolsPaginatedApiDocumentation  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedApiDocumentation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

