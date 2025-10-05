# PaginatedUsers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientUser[]**](ClientUser.md) | List of users | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedUsers = Initialize-WatchtowrAPIPaginatedUsers  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedUsers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

