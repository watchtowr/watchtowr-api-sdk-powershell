# Pagination
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | **Int32** |  | 
**Count** | **Int32** |  | 
**PerPage** | **Int32** |  | 
**CurrentPage** | **Int32** |  | 
**TotalPages** | **Int32** |  | 
**Links** | [**Link**](Link.md) |  | 

## Examples

- Prepare the resource
```powershell
$Pagination = Initialize-WatchtowrAPIPagination  -Total null `
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

