# ActiveDefenseRuleFinding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Finding ID. | 
**ActiveDefenseProvider** | **String** | Active Defense provider associated with the finding. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseRuleFinding = Initialize-WatchtowrAPIActiveDefenseRuleFinding  -Id 4211 `
 -ActiveDefenseProvider cloudflare
```

- Convert the resource to JSON
```powershell
$ActiveDefenseRuleFinding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

