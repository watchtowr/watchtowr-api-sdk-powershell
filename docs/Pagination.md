# Pagination
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | **Decimal** |  | 
**Count** | **Decimal** |  | 
**PerPage** | **Decimal** |  | 
**CurrentPage** | **Decimal** |  | 
**TotalPages** | **Decimal** |  | 
**Links** | [**Link**](Link.md) |  | 

## Examples

- Prepare the resource
```powershell
$Pagination = Initialize-PSOpenAPIToolsPagination  -Total null `
 -Count null `
 -PerPage null `
 -CurrentPage null `
 -TotalPages null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Pagination | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

