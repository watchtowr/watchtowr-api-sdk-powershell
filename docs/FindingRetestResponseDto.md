# FindingRetestResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestedBy** | **String** | Name of the user or service account that requested the retest. Empty when it is not known. | 
**RequestedAt** | **System.DateTime** |  | 
**RetestStatus** | **String** |  | 
**StatusOccurredAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**Evidence** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FindingRetestResponseDto = Initialize-WatchtowrAPIFindingRetestResponseDto  -RequestedBy Jane Doe `
 -RequestedAt 2024-01-29T08:05:09Z `
 -RetestStatus success `
 -StatusOccurredAt 2024-01-29T08:05:09Z `
 -CompletedAt 2024-01-29T08:05:09Z `
 -Evidence Evidence for retest
```

- Convert the resource to JSON
```powershell
$FindingRetestResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

