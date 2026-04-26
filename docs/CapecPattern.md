# CapecPattern
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapecId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CapecPattern = Initialize-WatchtowrAPICapecPattern  -CapecId CAPEC-66 `
 -Name SQL Injection
```

- Convert the resource to JSON
```powershell
$CapecPattern | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

