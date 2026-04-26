# TargetIndustry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Count** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetIndustry = Initialize-WatchtowrAPITargetIndustry  -Name Financial Services `
 -Count 8
```

- Convert the resource to JSON
```powershell
$TargetIndustry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

