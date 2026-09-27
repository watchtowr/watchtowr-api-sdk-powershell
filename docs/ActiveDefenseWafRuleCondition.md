# ActiveDefenseWafRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Condition type, where the provider uses one. | [optional] 
**Category** | **String** | Category (e.g. huawei, imperva). | [optional] 
**Contents** | **String[]** | Match contents. | [optional] 
**LogicOperation** | **String** | Logic operation joining contents. | [optional] 
**Key** | **String** | Match key. | [optional] 
**OpValue** | **String** | Comparison operator. | [optional] 
**Values** | [**ActiveDefenseWafRuleConditionValues**](ActiveDefenseWafRuleConditionValues.md) |  | [optional] 
**GroupOperator** | **String** | Operator joining a nested condition group. | [optional] 
**PositiveMatch** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Value** | **String[]** |  | [optional] 
**ValueWildcard** | **Boolean** |  | [optional] 
**SubKey** | **String** | Secondary match key (akamai). | [optional] 
**Index** | **String** | Condition position within its group. | [optional] 
**Conditions** | [**System.Collections.Hashtable[]**](Map.md) | Nested condition group — same shape as this object, one level deeper. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseWafRuleCondition = Initialize-WatchtowrAPIActiveDefenseWafRuleCondition  -Type pathMatch `
 -Category sqli `
 -Contents [&quot;/appconfigs&quot;] `
 -LogicOperation AND `
 -Key REQUEST_URI `
 -OpValue CONTAINS `
 -Values null `
 -GroupOperator AND `
 -PositiveMatch true `
 -Name PATH `
 -Value [&quot;/appconfigs&quot;] `
 -ValueWildcard false `
 -SubKey header `
 -Index 0 `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$ActiveDefenseWafRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

