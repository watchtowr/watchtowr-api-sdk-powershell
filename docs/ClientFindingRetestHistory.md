# ClientFindingRetestHistory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Retest ID | 
**Finding** | [**ClientFindingRetestHistoryFinding**](ClientFindingRetestHistoryFinding.md) | Finding information | 
**Asset** | [**ClientFindingRetestHistoryAsset**](ClientFindingRetestHistoryAsset.md) | Affected asset information | 
**TriggeredBy** | [**ClientFindingRetestHistoryTriggeredBy**](ClientFindingRetestHistoryTriggeredBy.md) | User who triggered the retest | 
**CurrentRetestStatus** | **String** | Current retest status | 
**StartedAt** | **System.DateTime** | Date and time when the retest was started | 
**CompletedAt** | [**SystemCollectionsHashtable**](.md) | Date and time when the retest was completed | 
**UpdatedAt** | **System.DateTime** | Date and time when the retest was last updated | 
**CreatedAt** | **System.DateTime** | Creation date | 

## Examples

- Prepare the resource
```powershell
$ClientFindingRetestHistory = Initialize-WatchtowrAPIClientFindingRetestHistory  -Id 789 `
 -Finding null `
 -Asset null `
 -TriggeredBy null `
 -CurrentRetestStatus in-progress `
 -StartedAt 2023-01-01T12:00Z `
 -CompletedAt 2023-01-01T13:00:00.000Z `
 -UpdatedAt 2023-01-01T12:30Z `
 -CreatedAt 2023-01-01T12:00Z
```

- Convert the resource to JSON
```powershell
$ClientFindingRetestHistory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

