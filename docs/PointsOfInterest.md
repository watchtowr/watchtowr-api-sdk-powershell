# PointsOfInterest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**Type** | **String** | Type | 
**Url** | **String** | Url | 
**DiscoveryToolId** | **String** | Discovery tool ID | 
**DiscoveryDate** | **System.DateTime** | Discovery date | [optional] 
**AssetId** | **Decimal** | Asset ID | 
**AssetName** | **String** | Asset name | 
**AssetType** | **String** | Asset type | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) | Business unit | 
**LastSeen** | **System.DateTime** | Last seen at | [optional] 

## Examples

- Prepare the resource
```powershell
$PointsOfInterest = Initialize-PSOpenAPIToolsPointsOfInterest  -Id 1 `
 -Name phpMyAdmin `
 -Type admin-panel `
 -Url http://watchtowr.com/phpmyadmin `
 -DiscoveryToolId test-id `
 -DiscoveryDate null `
 -AssetId 1 `
 -AssetName 123.123.123.123 `
 -AssetType ip `
 -BusinessUnits null `
 -LastSeen null
```

- Convert the resource to JSON
```powershell
$PointsOfInterest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

