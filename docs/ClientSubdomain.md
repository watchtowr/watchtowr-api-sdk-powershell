# ClientSubdomain
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
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**Live** | **Boolean** |  | 
**DnsRecords** | [**ClientAssetDnsRecord[]**](ClientAssetDnsRecord.md) | DNS records for the subdomain. In list responses, included only when &#x60;includeDnsRecords&#x3D;true&#x60; (capped at 5 per asset). Always populated on the detail endpoints (&#x60;GET /assets/subdomain/show/{id}&#x60; and &#x60;GET /assets/subdomain/show/{id}/dns-records&#x60;). Not included in finding &#x60;affected&#x60; objects. | [optional] 
**Metadata** | [**SystemCollectionsHashtable**](.md) | Cloud/IaaS integration metadata where available; defaults to an empty object. | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | [optional] 
**Infrastructure** | [**Infrastructure**](Infrastructure.md) |  | [optional] 
**EngineSettings** | [**ClientEngineSettings**](ClientEngineSettings.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientSubdomain = Initialize-WatchtowrAPIClientSubdomain  -DiscoveryReason dns-discovery `
 -Type subdomain `
 -Source module-adversarysight-crtsh-domain-backend `
 -Status verified `
 -CreatedAt 2022-02-13T02:10Z `
 -Id 123 `
 -Name subdomain.watchtowr.com `
 -BusinessUnits null `
 -Live true `
 -DnsRecords [{&quot;id&quot;:1690,&quot;name&quot;:&quot;subdomain.watchtowr.com&quot;,&quot;type&quot;:&quot;A&quot;,&quot;ttl&quot;:922,&quot;value&quot;:&quot;123.123.123.123&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;},{&quot;id&quot;:1685,&quot;name&quot;:&quot;subdomain.watchtowr.com&quot;,&quot;type&quot;:&quot;AAAA&quot;,&quot;ttl&quot;:2687,&quot;value&quot;:&quot;0000:0000:0000:0000:0000:ffff:7b7b:7b7b&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;}] `
 -Metadata {&quot;region&quot;:&quot;us-west-1&quot;,&quot;service&quot;:&quot;AWS&quot;} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;subdomain&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;subdomain&quot;,&quot;modelId&quot;:209,&quot;created_at&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updated_at&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium `
 -Infrastructure null `
 -EngineSettings null
```

- Convert the resource to JSON
```powershell
$ClientSubdomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

