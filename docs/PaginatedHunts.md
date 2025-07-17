# PaginatedHunts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Hunt[]**](Hunt.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedHunts = Initialize-WatchtowrAPIPaginatedHunts  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedHunts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

