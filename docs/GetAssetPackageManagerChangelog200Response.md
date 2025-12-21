# GetAssetPackageManagerChangelog200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**AnyType**](.md) |  | 
**Meta** | [**AnyType**](.md) |  | 

## Examples

- Prepare the resource
```powershell
$GetAssetPackageManagerChangelog200Response = Initialize-WatchtowrAPIGetAssetPackageManagerChangelog200Response  -VarData [{&quot;id&quot;:1,&quot;description&quot;:&quot;Package Manager created.&quot;,&quot;type&quot;:&quot;Add Asset&quot;,&quot;properties&quot;:{&quot;attributes&quot;:{&quot;url&quot;:&quot;https://www.npmjs.com/package/example-package&quot;,&quot;platform&quot;:&quot;npm&quot;}},&quot;created_at&quot;:&quot;2025-11-25T05:24:59.000Z&quot;,&quot;caused_by&quot;:{&quot;id&quot;:1,&quot;name&quot;:&quot;watchTowr Platform&quot;}},{&quot;id&quot;:2,&quot;description&quot;:&quot;Package Manager updated (status).&quot;,&quot;type&quot;:&quot;Asset Status Change&quot;,&quot;properties&quot;:{&quot;old&quot;:{&quot;status_name&quot;:&quot;pending&quot;,&quot;status_reason&quot;:&quot;Requires verification&quot;},&quot;attributes&quot;:{&quot;status_name&quot;:&quot;verified&quot;,&quot;status_reason&quot;:&quot;Manually verified via Client API&quot;}},&quot;created_at&quot;:&quot;2025-11-25T05:25:00.000Z&quot;,&quot;caused_by&quot;:{&quot;id&quot;:54,&quot;name&quot;:&quot;John Doe&quot;}}] `
 -Meta {&quot;pagination&quot;:{&quot;count&quot;:10,&quot;total&quot;:47,&quot;per_page&quot;:10,&quot;current_page&quot;:1,&quot;total_pages&quot;:5,&quot;links&quot;:{&quot;next&quot;:&quot;url&quot;}}}
```

- Convert the resource to JSON
```powershell
$GetAssetPackageManagerChangelog200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

