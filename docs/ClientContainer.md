# ClientContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiscoveryReason** | **String** |  | [optional] 
**Type** | **String** |  | 
**Source** | **String** |  | 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**Name** | **String** |  | 
**Owner** | **String** |  | 
**Platform** | **String** |  | 
**Url** | **String** |  | [optional] 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**Metadata** | [**SystemCollectionsHashtable**](.md) | Additional asset metadata; shape varies by asset type. Defaults to an empty object. | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientContainer = Initialize-WatchtowrAPIClientContainer  -DiscoveryReason dns-discovery `
 -Type container `
 -Source module-adversarysight-ecr-containers-discovery `
 -Status verified `
 -CreatedAt 2022-02-13T02:10Z `
 -Id 123 `
 -Name watchtowr/example-container `
 -Owner watchtowr `
 -Platform docker `
 -Url https://hub.docker.com/r/watchtowr/example-container `
 -BusinessUnits null `
 -Metadata {} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;container&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;container&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium
```

- Convert the resource to JSON
```powershell
$ClientContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

