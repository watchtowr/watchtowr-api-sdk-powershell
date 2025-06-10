# ForbiddenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$ForbiddenResponse = Initialize-PSOpenAPIToolsForbiddenResponse  -Message Forbidden `
 -StatusCode 403
```

- Convert the resource to JSON
```powershell
$ForbiddenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

