# UnauthorizedResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 
**VarError** | **String** | Error code | 

## Examples

- Prepare the resource
```powershell
$UnauthorizedResponse = Initialize-WatchtowrAPIUnauthorizedResponse  -Message Unauthorized `
 -VarError UNAUTHORIZED_REQUEST
```

- Convert the resource to JSON
```powershell
$UnauthorizedResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

