# ForbiddenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 
**StatusCode** | **Decimal** | HTTP status code | 

## Examples

- Prepare the resource
```powershell
$ForbiddenResponse = Initialize-WatchtowrAPIForbiddenResponse  -Message Administrator role required to access user management `
 -StatusCode 403
```

- Convert the resource to JSON
```powershell
$ForbiddenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

