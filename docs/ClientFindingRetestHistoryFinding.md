# ClientFindingRetestHistoryFinding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Finding ID | 
**Title** | **String** | Finding title | 
**Severity** | **String** | Finding severity | 
**Status** | **String** | Finding status | 

## Examples

- Prepare the resource
```powershell
$ClientFindingRetestHistoryFinding = Initialize-WatchtowrAPIClientFindingRetestHistoryFinding  -Id 123 `
 -Title SQL Injection Vulnerability `
 -Severity High `
 -Status Confirmed
```

- Convert the resource to JSON
```powershell
$ClientFindingRetestHistoryFinding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

