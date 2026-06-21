# ClientApiDocumentationAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiscoveryReason** | **String** |  | [optional] 
**Id** | **String** |  | 
**Type** | **String** |  | 
**Name** | **String** |  | 
**Source** | **String** |  | 
**Platform** | **String** |  | 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Url** | **String** |  | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**Metadata** | [**SystemCollectionsHashtable**](.md) | Additional asset metadata; shape varies by asset type. Defaults to an empty object. | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientApiDocumentationAsset = Initialize-WatchtowrAPIClientApiDocumentationAsset  -DiscoveryReason dns-discovery `
 -Id 1 `
 -Type apiDocumentation `
 -Name example_docs/example-swagger-hub `
 -Source module-adversarysight-swaggerhub-saas-discovery `
 -Platform SwaggerHub API `
 -Status verified `
 -CreatedAt 2022-02-13T02:10Z `
 -Url https://app.swaggerhub.com/apis/example_docs/example-swagger-hub/ `
 -BusinessUnits null `
 -Metadata {} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;apiDocumentation&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;apiDocumentation&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium
```

- Convert the resource to JSON
```powershell
$ClientApiDocumentationAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

