# PaginatedClientCloudStorage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientCloudStorage[]**](ClientCloudStorage.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientCloudStorage = Initialize-WatchtowrAPIPaginatedClientCloudStorage  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientCloudStorage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

