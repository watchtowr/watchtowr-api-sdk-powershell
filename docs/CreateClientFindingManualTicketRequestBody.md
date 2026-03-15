# CreateClientFindingManualTicketRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BoardName** | **String** | Name of the external board or ticketing system. | 
**IssueLink** | **String** | URL of the manually created ticket. | 

## Examples

- Prepare the resource
```powershell
$CreateClientFindingManualTicketRequestBody = Initialize-WatchtowrAPICreateClientFindingManualTicketRequestBody  -BoardName Acme Jira Board `
 -IssueLink https://example.atlassian.net/browse/ABC-123
```

- Convert the resource to JSON
```powershell
$CreateClientFindingManualTicketRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

