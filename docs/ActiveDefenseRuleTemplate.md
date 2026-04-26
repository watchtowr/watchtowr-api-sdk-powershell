# ActiveDefenseRuleTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Content** | [**System.Collections.Hashtable**](AnyType.md) | Provider-specific rule content (shape varies by provider). | 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseRuleTemplate = Initialize-WatchtowrAPIActiveDefenseRuleTemplate  -Type cloudflare `
 -Content null
```

- Convert the resource to JSON
```powershell
$ActiveDefenseRuleTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

