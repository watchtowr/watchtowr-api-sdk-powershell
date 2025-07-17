# UpdateApiDocumentationStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | The target status to update the asset to. | 
**StatusReason** | **String** | The reason for updating the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateApiDocumentationStatusDto = Initialize-PSOpenAPIToolsUpdateApiDocumentationStatusDto  -Status verified `
 -StatusReason Manually verified via Client API.
```

- Convert the resource to JSON
```powershell
$UpdateApiDocumentationStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

