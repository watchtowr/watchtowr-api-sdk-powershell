# PaginatedClientSeedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientSeedDataListItem[]**](ClientSeedDataListItem.md) | List of submitted seed data items | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientSeedData = Initialize-WatchtowrAPIPaginatedClientSeedData  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientSeedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

