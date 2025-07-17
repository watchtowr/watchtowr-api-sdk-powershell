# FindingRetestResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestedBy** | **String** |  | 
**RequestedAt** | **System.DateTime** |  | 
**RetestStatus** | **String** |  | 
**StatusOccurredAt** | **System.DateTime** |  | 
**CompletedAt** | **System.DateTime** |  | 
**Evidence** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$FindingRetestResponseDto = Initialize-WatchtowrAPIFindingRetestResponseDto  -RequestedBy Requested by user `
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

