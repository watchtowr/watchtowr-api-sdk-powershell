# ForbiddenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 

## Examples

- Prepare the resource
```powershell
$ForbiddenResponse = Initialize-WatchtowrAPIForbiddenResponse  -Message Only admin users can access platform whitelisting configuration
```

- Convert the resource to JSON
```powershell
$ForbiddenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

