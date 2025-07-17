# RequiredActionsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivelyExploitedFindings** | **Decimal** | Count of open findings currently being actively exploited | 
**UnresolvedRapidReactionHunts** | **Decimal** | Count of unresolved rapid reaction hunts | 

## Examples

- Prepare the resource
```powershell
$RequiredActionsDto = Initialize-PSOpenAPIToolsRequiredActionsDto  -ActivelyExploitedFindings 5 `
 -UnresolvedRapidReactionHunts 3
```

- Convert the resource to JSON
```powershell
$RequiredActionsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

