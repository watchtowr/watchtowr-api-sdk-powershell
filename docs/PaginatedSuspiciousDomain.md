# PaginatedSuspiciousDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SuspiciousDomain[]**](SuspiciousDomain.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedSuspiciousDomain = Initialize-WatchtowrAPIPaginatedSuspiciousDomain  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedSuspiciousDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

