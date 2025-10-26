# NotFoundResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 

## Examples

- Prepare the resource
```powershell
$NotFoundResponse = Initialize-WatchtowrAPINotFoundResponse  -Message Organisation white list ip not found
```

- Convert the resource to JSON
```powershell
$NotFoundResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

