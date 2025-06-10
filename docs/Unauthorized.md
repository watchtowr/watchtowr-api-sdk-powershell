# Unauthorized
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | **Decimal** |  | [optional] 
**Message** | **String** |  | [optional] 
**VarError** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Unauthorized = Initialize-PSOpenAPIToolsUnauthorized  -StatusCode 401 `
 -Message Unauthorized `
 -VarError UNAUTHORIZED_REQUEST
```

- Convert the resource to JSON
```powershell
$Unauthorized | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

