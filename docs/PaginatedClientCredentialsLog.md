# PaginatedClientCredentialsLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientCredentialsLog[]**](ClientCredentialsLog.md) | List of credential attempt logs | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientCredentialsLog = Initialize-WatchtowrAPIPaginatedClientCredentialsLog  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientCredentialsLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

