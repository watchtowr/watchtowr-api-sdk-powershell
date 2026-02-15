# TechnologyStatistic
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Technology name | 
**Count** | **Decimal** | Number of services using this technology | 

## Examples

- Prepare the resource
```powershell
$TechnologyStatistic = Initialize-WatchtowrAPITechnologyStatistic  -Name Apache `
 -Count 42
```

- Convert the resource to JSON
```powershell
$TechnologyStatistic | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

