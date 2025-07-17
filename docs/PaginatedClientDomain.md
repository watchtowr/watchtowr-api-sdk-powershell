# PaginatedClientDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientDomain[]**](ClientDomain.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientDomain = Initialize-WatchtowrAPIPaginatedClientDomain  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

