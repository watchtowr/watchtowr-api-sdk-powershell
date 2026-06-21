# Asset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | [**AssetId**](AssetId.md) |  | 
**CreatedAt** | **System.DateTime** | Created at | 
**Source** | **String** | Source | 
**Type** | **String** | Type | 
**Status** | **String** | Status | 
**Name** | **String** | Name | 
**Country** | **String** | Country | 
**Platform** | **String** | Platform | 
**Provider** | **String** | Provider | 
**Url** | **String** | URL | 
**BusinessUnits** | [**AssetBusinessUnitDto[]**](AssetBusinessUnitDto.md) | Business units | 
**DiscoveryReason** | **String** | Discovery reason | 
**Owner** | **String** | Owner | 
**Live** | **Boolean** | Live | 
**SubType** | **String** | Sub type | 
**SuperType** | **String** | Super type | 
**Metadata** | [**SystemCollectionsHashtable**](.md) | Metadata | 
**EngineSettings** | [**ClientEngineSettings**](ClientEngineSettings.md) | Engine coverage settings. Present on domain, container, and IP hunt assets; omitted for other asset types. | [optional] 

## Examples

- Prepare the resource
```powershell
$Asset = Initialize-WatchtowrAPIAsset  -Id null `
 -CreatedAt 2021-11-22T22:17:12Z `
 -Source module-github-enumeration-v0.1 `
 -Type repository `
 -Status verified `
 -Name TestName `
 -Country null `
 -Platform null `
 -Provider github `
 -Url https://example.com `
 -BusinessUnits [{&quot;id&quot;:153,&quot;name&quot;:&quot;BU SG-01&quot;}] `
 -DiscoveryReason null `
 -Owner example_user `
 -Live null `
 -SubType Amazon RDS `
 -SuperType Databases `
 -Metadata {} `
 -EngineSettings null
```

- Convert the resource to JSON
```powershell
$Asset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

