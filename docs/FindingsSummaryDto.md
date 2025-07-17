# FindingsSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalResolvedFindings** | **Decimal** | Total count of resolved findings | 
**OldCriticalHighFindings** | **Decimal** | Count of critical/high findings older than 30 days | 
**UnacknowledgedCriticalHighFindings** | **Decimal** | Count of unacknowledged critical/high findings | 

## Examples

- Prepare the resource
```powershell
$FindingsSummaryDto = Initialize-WatchtowrAPIFindingsSummaryDto  -TotalResolvedFindings 156 `
 -OldCriticalHighFindings 3 `
 -UnacknowledgedCriticalHighFindings 7
```

- Convert the resource to JSON
```powershell
$FindingsSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

