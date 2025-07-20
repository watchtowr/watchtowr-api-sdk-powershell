# SecurityPostureDashboardResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SecurityPostureDashboardDto**](SecurityPostureDashboardDto.md) | Security posture dashboard data | 

## Examples

- Prepare the resource
```powershell
$SecurityPostureDashboardResponse = Initialize-WatchtowrAPISecurityPostureDashboardResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$SecurityPostureDashboardResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

