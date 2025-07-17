# ClientBusinessUnitDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**Description** | **String** | Description | 
**CreatedAt** | [**SystemCollectionsHashtable**](.md) | Created At | 

## Examples

- Prepare the resource
```powershell
$ClientBusinessUnitDetail = Initialize-PSOpenAPIToolsClientBusinessUnitDetail  -Id 1 `
 -Name Singapore Business Unit `
 -Description Singapore based assets `
 -CreatedAt 2022-02-13T02:10:00.000000Z
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

