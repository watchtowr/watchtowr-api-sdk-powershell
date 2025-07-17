# MttrMetricsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mttr** | **Decimal** | Mean Time To Remediation in hours | 
**Mttrae** | **Decimal** | Mean Time To Remediation After Exploitation in hours | 

## Examples

- Prepare the resource
```powershell
$MttrMetricsDto = Initialize-WatchtowrAPIMttrMetricsDto  -Mttr 48 `
 -Mttrae 72
```

- Convert the resource to JSON
```powershell
$MttrMetricsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

