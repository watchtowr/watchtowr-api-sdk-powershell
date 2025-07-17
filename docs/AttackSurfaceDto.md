# AttackSurfaceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalVerifiedAssets** | **Decimal** | Total count of verified assets | 
**TotalPointsOfInterest** | **Decimal** | Total count of points of interest | 
**TotalNetworkServices** | **Decimal** | Total count of network services | 
**TotalCertificates** | **Decimal** | Total count of TLS/SSL certificates | 

## Examples

- Prepare the resource
```powershell
$AttackSurfaceDto = Initialize-WatchtowrAPIAttackSurfaceDto  -TotalVerifiedAssets 1250 `
 -TotalPointsOfInterest 67 `
 -TotalNetworkServices 234 `
 -TotalCertificates 45
```

- Convert the resource to JSON
```powershell
$AttackSurfaceDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

