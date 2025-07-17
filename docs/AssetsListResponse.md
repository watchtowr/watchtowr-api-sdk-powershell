# AssetsListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Asset[]**](Asset.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$AssetsListResponse = Initialize-WatchtowrAPIAssetsListResponse  -VarData [{&quot;type&quot;:&quot;repository&quot;,&quot;source&quot;:&quot;Initial Data&quot;,&quot;status&quot;:&quot;verified&quot;,&quot;created_at&quot;:&quot;2021-11-22T22:17:12.000Z&quot;,&quot;id&quot;:&quot;1&quot;,&quot;country&quot;:null,&quot;platform&quot;:null,&quot;provider&quot;:&quot;test provider&quot;,&quot;url&quot;:null,&quot;name&quot;:&quot;test name&quot;,&quot;businessUnits&quot;:[],&quot;discovery_reason&quot;:&quot;discovery reason test data&quot;,&quot;owner&quot;:&quot;test owner&quot;,&quot;live&quot;:null,&quot;sub_type&quot;:null,&quot;super_type&quot;:null,&quot;metadata&quot;:{}},{&quot;type&quot;:&quot;repository&quot;,&quot;source&quot;:&quot;module-github-enumeration-v0.1&quot;,&quot;status&quot;:&quot;verified&quot;,&quot;created_at&quot;:&quot;2021-11-22T22:17:12.000Z&quot;,&quot;id&quot;:&quot;10&quot;,&quot;country&quot;:null,&quot;platform&quot;:null,&quot;provider&quot;:&quot;github&quot;,&quot;url&quot;:&quot;https://github.com&quot;,&quot;name&quot;:&quot;test-name&quot;,&quot;businessUnits&quot;:[],&quot;discovery_reason&quot;:null,&quot;owner&quot;:&quot;test-owner&quot;,&quot;live&quot;:null,&quot;sub_type&quot;:null,&quot;super_type&quot;:null,&quot;metadata&quot;:{}},{&quot;type&quot;:&quot;subdomain&quot;,&quot;source&quot;:&quot;subdomain.example.com&quot;,&quot;status&quot;:&quot;VerifiedOutOfScope&quot;,&quot;created_at&quot;:&quot;2022-01-20T19:15:56.000Z&quot;,&quot;id&quot;:&quot;4678&quot;,&quot;country&quot;:null,&quot;platform&quot;:null,&quot;provider&quot;:null,&quot;url&quot;:null,&quot;name&quot;:&quot;subdomain.example.com&quot;,&quot;businessUnits&quot;:[],&quot;discovery_reason&quot;:null,&quot;owner&quot;:null,&quot;live&quot;:false,&quot;sub_type&quot;:null,&quot;super_type&quot;:null,&quot;metadata&quot;:{}},{&quot;type&quot;:&quot;cloudAsset&quot;,&quot;source&quot;:&quot;test-module-controller-1-0&quot;,&quot;status&quot;:&quot;verified&quot;,&quot;created_at&quot;:&quot;2024-06-05T02:31:28.000Z&quot;,&quot;id&quot;:&quot;1&quot;,&quot;country&quot;:null,&quot;platform&quot;:null,&quot;provider&quot;:null,&quot;url&quot;:&quot;123.123.123.123&quot;,&quot;name&quot;:&quot;example-cloudAsset-1&quot;,&quot;businessUnits&quot;:[],&quot;discovery_reason&quot;:null,&quot;owner&quot;:null,&quot;live&quot;:false,&quot;sub_type&quot;:&quot;Amazon RDS&quot;,&quot;super_type&quot;:&quot;Databases&quot;,&quot;metadata&quot;:{}}] `
 -Meta null
```

- Convert the resource to JSON
```powershell
$AssetsListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

