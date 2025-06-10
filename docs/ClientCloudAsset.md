# ClientCloudAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** |  | 
**Source** | **String** |  | 
**Provider** | **String** |  | 
**SuperType** | **String** |  | 
**SubType** | **String** |  | 
**Hostname** | **String** |  | 
**CloudResourceId** | **String** |  | 
**CreatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**UpdatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**DeletedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**Metadata** | [**SystemCollectionsHashtable**](.md) |  | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ClientCloudAsset = Initialize-PSOpenAPIToolsClientCloudAsset  -Type cloudAsset `
 -Name example-aws-cloud-asset-rds-database `
 -Source test-module-controller-1-0 `
 -Provider aws `
 -SuperType database `
 -SubType EC2 `
 -Hostname example-aws-cloud-asset-rds-database.example.com `
 -CloudResourceId resource-db-v-2 `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -DeletedAt 2022-02-13T02:10:00.000000Z `
 -Metadata {&quot;createdAt&quot;:&quot;2024-06-26T02:43:11.443000Z&quot;,&quot;registryId&quot;:&quot;294444990188&quot;,&quot;repositoryArn&quot;:&quot;arn:aws:ecr:ap-southeast-1:294444990188:repository/folder-test&quot;,&quot;repositoryUri&quot;:&quot;294444990188.dkr.ecr.ap-southeast-1.amazonaws.com/folder-test&quot;,&quot;repositoryName&quot;:&quot;folder-test&quot;,&quot;_wt_internal_func&quot;:&quot;fetch_private_elastic_container_registry_assets&quot;,&quot;imageTagMutability&quot;:&quot;MUTABLE&quot;,&quot;encryptionConfiguration&quot;:{&quot;encryptionType&quot;:&quot;AES256&quot;},&quot;imageScanningConfiguration&quot;:{&quot;scanOnPush&quot;:false}} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;cloudAsset&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;cloudAsset&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium
```

- Convert the resource to JSON
```powershell
$ClientCloudAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

