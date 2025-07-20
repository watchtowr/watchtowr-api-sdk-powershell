# PaginatedClientPendingDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientPendingDomain[]**](ClientPendingDomain.md) | List of pending domain items | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientPendingDomain = Initialize-WatchtowrAPIPaginatedClientPendingDomain  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientPendingDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

