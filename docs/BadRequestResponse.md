# BadRequestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 

## Examples

- Prepare the resource
```powershell
$BadRequestResponse = Initialize-WatchtowrAPIBadRequestResponse  -Message CREATE_WHITELISTED_IP_ERROR: IP address has already been whitelisted
```

- Convert the resource to JSON
```powershell
$BadRequestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

