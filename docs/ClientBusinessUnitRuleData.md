# ClientBusinessUnitRuleData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientBusinessUnitRuleDetail**](ClientBusinessUnitRuleDetail.md) |  | 
**Rules** | [**ClientBusinessUnitRuleDetail[]**](ClientBusinessUnitRuleDetail.md) | All rules created by this request (use this for multi-rule responses) | 

## Examples

- Prepare the resource
```powershell
$ClientBusinessUnitRuleData = Initialize-WatchtowrAPIClientBusinessUnitRuleData  -VarData null `
 -Rules null
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitRuleData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

