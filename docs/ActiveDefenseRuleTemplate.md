# ActiveDefenseRuleTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Content** | [**System.Collections.Hashtable**](AnyType.md) | Provider-specific rule content (shape varies by provider). Deprecated: use rules for structured per-variant content. | 
**Rules** | [**ActiveDefenseWafRule[]**](ActiveDefenseWafRule.md) | Structured rule variants for this provider. Null when the upstream content is not in the expected vendorised format. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseRuleTemplate = Initialize-WatchtowrAPIActiveDefenseRuleTemplate  -Type cloudflare `
 -Content null `
 -Rules null
```

- Convert the resource to JSON
```powershell
$ActiveDefenseRuleTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

