# Technology
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**Version** | **String** | Version | 
**DisplayName** | **String** | Display name | 

## Examples

- Prepare the resource
```powershell
$Technology = Initialize-PSOpenAPIToolsTechnology  -Id 1 `
 -Name APACHE `
 -Version 0.1 `
 -DisplayName APACHE
```

- Convert the resource to JSON
```powershell
$Technology | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

