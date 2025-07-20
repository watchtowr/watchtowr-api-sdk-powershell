# PaginatedClientFindingRetestHistory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientFindingRetestHistory[]**](ClientFindingRetestHistory.md) | List of finding retest history items | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientFindingRetestHistory = Initialize-WatchtowrAPIPaginatedClientFindingRetestHistory  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientFindingRetestHistory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

