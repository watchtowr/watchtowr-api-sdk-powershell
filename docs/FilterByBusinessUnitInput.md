# FilterByBusinessUnitInput
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Business unit ID | [optional] 
**Type** | **String** | Business unit type | 
**Name** | **String** | Business unit name | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterByBusinessUnitInput = Initialize-WatchtowrAPIFilterByBusinessUnitInput  -Id 1 `
 -Type BUSINESS_UNIT `
 -Name Marketing
```

- Convert the resource to JSON
```powershell
$FilterByBusinessUnitInput | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

