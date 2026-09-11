# ActiveDefenseWafRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**PositiveMatch** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Value** | **String[]** |  | [optional] 
**ValueWildcard** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseWafRuleCondition = Initialize-WatchtowrAPIActiveDefenseWafRuleCondition  -Type pathMatch `
 -PositiveMatch true `
 -Name PATH `
 -Value [&quot;/appconfigs&quot;] `
 -ValueWildcard false
```

- Convert the resource to JSON
```powershell
$ActiveDefenseWafRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

