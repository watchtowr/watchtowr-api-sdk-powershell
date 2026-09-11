# ClientActiveDefenseRuleProviderData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ActiveDefenseRuleTemplate**](ActiveDefenseRuleTemplate.md) | First matching rule template. Kept for backward compatibility — multi-variant rules have more than one template; use &#x60;templates&#x60; for the complete set. | 
**Templates** | [**ActiveDefenseRuleTemplate[]**](ActiveDefenseRuleTemplate.md) | All rule templates for the requested provider. A rule may carry several variants (e.g. alternate trigger endpoints) — apply every template for a complete mitigation. | 

## Examples

- Prepare the resource
```powershell
$ClientActiveDefenseRuleProviderData = Initialize-WatchtowrAPIClientActiveDefenseRuleProviderData  -VarData null `
 -Templates null
```

- Convert the resource to JSON
```powershell
$ClientActiveDefenseRuleProviderData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

