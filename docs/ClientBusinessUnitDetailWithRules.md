# ClientBusinessUnitDetailWithRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**Description** | **String** | Description | 
**Type** | **String** | Business unit type | 
**ParentId** | **Decimal** | Parent business unit ID | [optional] 
**CreatedAt** | [**SystemCollectionsHashtable**](.md) | Created At | 
**UpdatedAt** | [**SystemCollectionsHashtable**](.md) | Updated At | 
**Rules** | [**SystemCollectionsHashtable**](.md) | Paginated rules for this business unit | 

## Examples

- Prepare the resource
```powershell
$ClientBusinessUnitDetailWithRules = Initialize-WatchtowrAPIClientBusinessUnitDetailWithRules  -Id 1 `
 -Name Singapore Business Unit `
 -Description Singapore based assets `
 -Type DEPARTMENT `
 -ParentId 1 `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -Rules null
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitDetailWithRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

