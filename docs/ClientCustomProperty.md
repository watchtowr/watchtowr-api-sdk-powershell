# ClientCustomProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Key** | **String** | The key of the custom property. Key provided must not be empty and must be unique for the model type. If is_preset is true, key must belong to one of watchTowr&#39;s preset custom properties. Accepted preset keys include: &#39;Criticality&#39;. | 
**Value** | **String** | The value of the custom property. Any string value is accepted if preset is false. If existing custom property&#39;s preset is true, the value supplied must belong to one of the valid watchTowr preset values. Accepted values are &#39;Low&#39;, &#39;Medium&#39;, &#39;High&#39;, &#39;Unknown&#39; for key: &#39;Criticality&#39;. | 
**IsPreset** | **Boolean** | Indicates whether this is a watchTowr preset custom property. | 

## Examples

- Prepare the resource
```powershell
$ClientCustomProperty = Initialize-PSOpenAPIToolsClientCustomProperty  -Id 1 `
 -Key Severity `
 -Value Low `
 -IsPreset false
```

- Convert the resource to JSON
```powershell
$ClientCustomProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

