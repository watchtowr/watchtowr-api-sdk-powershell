# Hunt
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Type** | **String** | Type | 
**CreatedAt** | **System.DateTime** | Created at | 
**UpdatedAt** | **System.DateTime** | Updated at | 
**TotalFindings** | **Decimal** | Total findings related to this hunt | 
**TotalAssets** | **Decimal** | Total assets related to this hunt | 
**HuntRequestType** | **String** | Hunt request type | 
**RapidExposureMechanism** | **String** | Rapid exposure mechanism | [optional] 
**Title** | **String** | Title | 
**Status** | **String** | Status | 

## Examples

- Prepare the resource
```powershell
$Hunt = Initialize-WatchtowrAPIHunt  -Id 1 `
 -Type bespoke `
 -CreatedAt 2023-06-28T02:22:36Z `
 -UpdatedAt 2023-06-28T02:22:36Z `
 -TotalFindings 1 `
 -TotalAssets 10 `
 -HuntRequestType Others `
 -RapidExposureMechanism impactLessPoc `
 -Title ... `
 -Status completed
```

- Convert the resource to JSON
```powershell
$Hunt | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

