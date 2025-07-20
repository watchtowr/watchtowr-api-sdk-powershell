# PaginatedClientIp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientIp[]**](ClientIp.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientIp = Initialize-WatchtowrAPIPaginatedClientIp  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientIp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

