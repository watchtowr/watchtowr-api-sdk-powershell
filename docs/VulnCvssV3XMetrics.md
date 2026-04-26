# VulnCvssV3XMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Vector** | **String** |  | [optional] 
**Score** | **Decimal** |  | [optional] 
**Severity** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VulnCvssV3XMetrics = Initialize-WatchtowrAPIVulnCvssV3XMetrics  -Vector CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H `
 -Score 9.5 `
 -Severity critical
```

- Convert the resource to JSON
```powershell
$VulnCvssV3XMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

