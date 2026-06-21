# ClientTestingInfrastructure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Description** | **String** |  | 
**Region** | **String** |  | [optional] 
**Whitelist** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ClientTestingInfrastructure = Initialize-WatchtowrAPIClientTestingInfrastructure  -Name null `
 -Description null `
 -Region null `
 -Whitelist null
```

- Convert the resource to JSON
```powershell
$ClientTestingInfrastructure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

