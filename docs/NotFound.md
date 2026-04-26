# NotFound
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$NotFound = Initialize-WatchtowrAPINotFound  -Message Not Found `
 -StatusCode 404
```

- Convert the resource to JSON
```powershell
$NotFound | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

