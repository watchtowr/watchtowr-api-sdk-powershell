# ClientFindingRetestHistory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Retest ID | 
**Finding** | [**ClientFindingRetestHistoryFinding**](ClientFindingRetestHistoryFinding.md) | Finding information | [optional] 
**Asset** | [**ClientFindingRetestHistoryAsset**](ClientFindingRetestHistoryAsset.md) | Affected asset information | [optional] 
**TriggeredBy** | [**ClientFindingRetestHistoryTriggeredBy**](ClientFindingRetestHistoryTriggeredBy.md) | User who triggered the retest | [optional] 
**CurrentRetestStatus** | **String** | Current retest status | 
**Result** | **String** | Retest result status at the time this retest completed. | 
**StartedAt** | **System.DateTime** | Date and time when the retest was started | 
**CompletedAt** | **System.DateTime** | Date and time when the retest was completed | [optional] 
**UpdatedAt** | **System.DateTime** | Date and time when the retest was last updated | 
**CreatedAt** | **System.DateTime** | Creation date | 
**AttemptNumber** | **Decimal** | Retest attempt number for this finding | [optional] 
**DaysOpenBeforeRetest** | **Decimal** | Number of days the finding was open before this retest was triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientFindingRetestHistory = Initialize-WatchtowrAPIClientFindingRetestHistory  -Id 789 `
 -Finding null `
 -Asset null `
 -TriggeredBy null `
 -CurrentRetestStatus in-progress `
 -Result resolved `
 -StartedAt 2023-01-01T12:00Z `
 -CompletedAt 2023-01-01T13:00Z `
 -UpdatedAt 2023-01-01T12:30Z `
 -CreatedAt 2023-01-01T12:00Z `
 -AttemptNumber 2 `
 -DaysOpenBeforeRetest 14
```

- Convert the resource to JSON
```powershell
$ClientFindingRetestHistory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

