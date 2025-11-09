# CreateClientBusinessUnitDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Business unit name | 
**Description** | **String** | Business unit description | [optional] 
**Type** | **String** | Business unit type | 
**ParentId** | **Decimal** | Parent business unit ID | [optional] 
**UserIds** | **Decimal[]** | Array of user IDs to assign to this business unit | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateClientBusinessUnitDto = Initialize-WatchtowrAPICreateClientBusinessUnitDto  -Name Singapore Business Unit `
 -Description Singapore based assets `
 -Type DEPARTMENT `
 -ParentId 1 `
 -UserIds [1,2,3]
```

- Convert the resource to JSON
```powershell
$CreateClientBusinessUnitDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

