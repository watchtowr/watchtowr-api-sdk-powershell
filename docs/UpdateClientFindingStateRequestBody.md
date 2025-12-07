# UpdateClientFindingStateRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** | Finding state. Different to status, this is about tracking how the finding is being handled. | 

## Examples

- Prepare the resource
```powershell
$UpdateClientFindingStateRequestBody = Initialize-WatchtowrAPIUpdateClientFindingStateRequestBody  -State In Progress
```

- Convert the resource to JSON
```powershell
$UpdateClientFindingStateRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

