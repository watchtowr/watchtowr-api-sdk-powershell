# ClientFindingManualTicket
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**UserId** | **Decimal** |  | 
**FindingId** | **Decimal** |  | 
**OrganisationId** | **Decimal** |  | 
**BoardName** | **String** |  | 
**IssueLink** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ClientFindingManualTicket = Initialize-WatchtowrAPIClientFindingManualTicket  -Id 1 `
 -UserId 123 `
 -FindingId 456 `
 -OrganisationId 789 `
 -BoardName Acme Jira Board `
 -IssueLink https://example.atlassian.net/browse/ABC-123 `
 -CreatedAt 2026-03-09T12:30Z `
 -UpdatedAt 2026-03-09T12:30Z
```

- Convert the resource to JSON
```powershell
$ClientFindingManualTicket | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

