# UpdateClientCloudAssetStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Target status to update. | 
**StatusReason** | **String** | Reason for updating status. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateClientCloudAssetStatusDto = Initialize-WatchtowrAPIUpdateClientCloudAssetStatusDto  -Status verified `
 -StatusReason Manually verified via Client API
```

- Convert the resource to JSON
```powershell
$UpdateClientCloudAssetStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

