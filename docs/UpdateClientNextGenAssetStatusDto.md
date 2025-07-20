# UpdateClientNextGenAssetStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Target status to update. | 
**StatusReason** | **String** | Reason for updating status. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateClientNextGenAssetStatusDto = Initialize-WatchtowrAPIUpdateClientNextGenAssetStatusDto  -Status verified `
 -StatusReason Manually verified via Client API
```

- Convert the resource to JSON
```powershell
$UpdateClientNextGenAssetStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

