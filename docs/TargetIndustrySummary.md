# TargetIndustrySummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**TargetIndustry[]**](TargetIndustry.md) |  | [optional] 
**TotalCount** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetIndustrySummary = Initialize-WatchtowrAPITargetIndustrySummary  -VarData null `
 -TotalCount 12
```

- Convert the resource to JSON
```powershell
$TargetIndustrySummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

