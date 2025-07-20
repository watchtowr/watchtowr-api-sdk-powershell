# Unauthorized
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 
**StatusCode** | **Decimal** | HTTP status code | 

## Examples

- Prepare the resource
```powershell
$Unauthorized = Initialize-WatchtowrAPIUnauthorized  -Message Unauthorized `
 -StatusCode 401
```

- Convert the resource to JSON
```powershell
$Unauthorized | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

