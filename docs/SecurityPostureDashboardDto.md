# SecurityPostureDashboardDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequiredActions** | [**RequiredActionsDto**](RequiredActionsDto.md) | Top priority items requiring immediate attention | 
**HuntOverview** | [**HuntOverviewDto**](HuntOverviewDto.md) | Hunt-related metrics and status | 
**AttackSurfaceResiliency** | [**AttackSurfaceResiliencyDto**](AttackSurfaceResiliencyDto.md) | Long-term security resilience metrics | 
**OrganizationSummary** | [**OrganizationSummaryDto**](OrganizationSummaryDto.md) | Overall organization metrics and summary | 

## Examples

- Prepare the resource
```powershell
$SecurityPostureDashboardDto = Initialize-WatchtowrAPISecurityPostureDashboardDto  -RequiredActions null `
 -HuntOverview null `
 -AttackSurfaceResiliency null `
 -OrganizationSummary null
```

- Convert the resource to JSON
```powershell
$SecurityPostureDashboardDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

