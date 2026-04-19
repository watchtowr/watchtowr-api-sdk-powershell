# TtpLibraryCategoryItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Category ID | 
**Name** | **String** | Category name | 

## Examples

- Prepare the resource
```powershell
$TtpLibraryCategoryItem = Initialize-WatchtowrAPITtpLibraryCategoryItem  -Id 42 `
 -Name Network Infrastructure
```

- Convert the resource to JSON
```powershell
$TtpLibraryCategoryItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

