# ThreatActorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttackerName** | **String** | Threat actor name | 
**Country** | **String** | Country code | 

## Examples

- Prepare the resource
```powershell
$ThreatActorDto = Initialize-PSOpenAPIToolsThreatActorDto  -AttackerName APT29 `
 -Country ru
```

- Convert the resource to JSON
```powershell
$ThreatActorDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

