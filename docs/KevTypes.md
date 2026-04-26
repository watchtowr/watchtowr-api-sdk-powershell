# KevTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cisa** | **Boolean** |  | 
**Vulncheck** | **Boolean** |  | 
**Watchtowr** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$KevTypes = Initialize-WatchtowrAPIKevTypes  -Cisa true `
 -Vulncheck false `
 -Watchtowr false
```

- Convert the resource to JSON
```powershell
$KevTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

