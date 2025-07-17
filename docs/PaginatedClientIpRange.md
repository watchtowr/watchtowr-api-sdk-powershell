# PaginatedClientIpRange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientIpRange[]**](ClientIpRange.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientIpRange = Initialize-PSOpenAPIToolsPaginatedClientIpRange  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientIpRange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

