# VulnEpss
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **Decimal** |  | [optional] 
**Percentile** | **Decimal** |  | [optional] 
**EpssScoreLevel** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VulnEpss = Initialize-WatchtowrAPIVulnEpss  -Score 0.97521 `
 -Percentile 0.999 `
 -EpssScoreLevel Very High
```

- Convert the resource to JSON
```powershell
$VulnEpss | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

