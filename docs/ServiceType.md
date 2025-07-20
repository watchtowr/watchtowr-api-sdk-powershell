# ServiceType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 

## Examples

- Prepare the resource
```powershell
$ServiceType = Initialize-WatchtowrAPIServiceType  -Id 1 `
 -Name APACHE
```

- Convert the resource to JSON
```powershell
$ServiceType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

