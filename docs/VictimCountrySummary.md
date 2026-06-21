# VictimCountrySummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **String[]** |  | [optional] 
**TotalCount** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VictimCountrySummary = Initialize-WatchtowrAPIVictimCountrySummary  -VarData [&quot;SG&quot;,&quot;US&quot;] `
 -TotalCount 25
```

- Convert the resource to JSON
```powershell
$VictimCountrySummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

