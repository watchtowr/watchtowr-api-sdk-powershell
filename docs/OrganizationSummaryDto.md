# OrganizationSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttackSurface** | [**AttackSurfaceDto**](AttackSurfaceDto.md) | Attack surface metrics | 
**OpenFindings** | [**OpenFindingsDto**](OpenFindingsDto.md) | Breakdown of findings by severity level | 
**MttrMetrics** | [**MttrMetricsDto**](MttrMetricsDto.md) | Mean Time To Remediation metrics | 
**FindingsSummary** | [**FindingsSummaryDto**](FindingsSummaryDto.md) | Historical and categorized finding metrics | 

## Examples

- Prepare the resource
```powershell
$OrganizationSummaryDto = Initialize-WatchtowrAPIOrganizationSummaryDto  -AttackSurface null `
 -OpenFindings null `
 -MttrMetrics null `
 -FindingsSummary null
```

- Convert the resource to JSON
```powershell
$OrganizationSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

