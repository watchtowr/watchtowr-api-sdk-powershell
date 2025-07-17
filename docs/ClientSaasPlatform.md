# ClientSaasPlatform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Source** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**UpdatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**DeletedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**Id** | **Decimal** |  | 
**Url** | **String** |  | 
**Provider** | **String** |  | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ClientSaasPlatform = Initialize-PSOpenAPIToolsClientSaasPlatform  -Type saasPlatform `
 -Source module-adversarysight-slack-saas-discovery `
 -Status verified `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -DeletedAt 2022-02-13T02:10:00.000000Z `
 -Id 123 `
 -Url https://example.slack.com `
 -Provider Slack `
 -BusinessUnits null `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;saasPlatform&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;saasPlatform&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium
```

- Convert the resource to JSON
```powershell
$ClientSaasPlatform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

