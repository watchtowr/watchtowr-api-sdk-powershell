# ClientCredentialsLogCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** | Username used in the credential attempt | 
**TargetUrl** | **String** | Target URL for the credential attempt | 

## Examples

- Prepare the resource
```powershell
$ClientCredentialsLogCredentials = Initialize-WatchtowrAPIClientCredentialsLogCredentials  -Username admin `
 -TargetUrl https://example.com/login
```

- Convert the resource to JSON
```powershell
$ClientCredentialsLogCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

