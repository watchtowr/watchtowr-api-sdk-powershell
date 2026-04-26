# FirstReportedByAttackerSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AptGroupFirstReported** | **System.DateTime** |  | [optional] 
**RansomwareFirstReported** | **System.DateTime** |  | [optional] 
**BotnetFirstReported** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FirstReportedByAttackerSummary = Initialize-WatchtowrAPIFirstReportedByAttackerSummary  -AptGroupFirstReported 2023-06-15T00:00Z `
 -RansomwareFirstReported 2023-06-20T00:00Z `
 -BotnetFirstReported null
```

- Convert the resource to JSON
```powershell
$FirstReportedByAttackerSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

