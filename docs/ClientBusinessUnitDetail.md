# ClientBusinessUnitDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**Description** | **String** | Description | 
**Type** | **String** | Business unit type | 
**ParentId** | **Decimal** | Parent business unit ID | [optional] 
**UserIds** | **Decimal[]** | Array of user IDs assigned to this business unit | [optional] 
**CreatedAt** | [**SystemCollectionsHashtable**](.md) | Created At | 
**UpdatedAt** | [**SystemCollectionsHashtable**](.md) | Updated At | 

## Examples

- Prepare the resource
```powershell
$ClientBusinessUnitDetail = Initialize-WatchtowrAPIClientBusinessUnitDetail  -Id 1 `
 -Name Singapore Business Unit `
 -Description Singapore based assets `
 -Type DEPARTMENT `
 -ParentId 1 `
 -UserIds [1,2,3] `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

