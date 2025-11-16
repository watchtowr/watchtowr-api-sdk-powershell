# UpdateClientBusinessUnitDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Business unit name | 
**Description** | **String** | Business unit description | [optional] 
**Type** | **String** | Business unit type | 
**ParentId** | **Decimal** | Parent business unit ID. Set to null to remove parent relationship. | [optional] 
**UserIds** | **Decimal[]** | Array of user IDs to assign to this business unit | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateClientBusinessUnitDto = Initialize-WatchtowrAPIUpdateClientBusinessUnitDto  -Name Updated Business Unit Name `
 -Description Updated description `
 -Type DEPARTMENT `
 -ParentId 1 `
 -UserIds [1,2,3]
```

- Convert the resource to JSON
```powershell
$UpdateClientBusinessUnitDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

