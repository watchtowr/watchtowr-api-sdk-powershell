# AttackSurfaceResiliencyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConcerningServices** | **Decimal** | Count of concerning network services | 
**ConcerningPointsOfInterest** | **Decimal** | Count of concerning points of interest | 
**ValidCredentials** | **Decimal** | Count of findings with valid credentials | 
**OpenFindings** | **Decimal** | Total count of open findings | 

## Examples

- Prepare the resource
```powershell
$AttackSurfaceResiliencyDto = Initialize-WatchtowrAPIAttackSurfaceResiliencyDto  -ConcerningServices 8 `
 -ConcerningPointsOfInterest 12 `
 -ValidCredentials 4 `
 -OpenFindings 45
```

- Convert the resource to JSON
```powershell
$AttackSurfaceResiliencyDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

