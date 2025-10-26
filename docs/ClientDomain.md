# ClientDomain
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
**Name** | **String** |  | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**Live** | **Boolean** |  | 
**DnsRecords** | **String[]** |  | 
**Metadata** | [**SystemCollectionsHashtable**](.md) |  | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | 
**Infrastructure** | [**Infrastructure**](Infrastructure.md) |  | [optional] 
**EngineSettings** | [**ClientEngineSettings**](ClientEngineSettings.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientDomain = Initialize-WatchtowrAPIClientDomain  -Type domain `
 -Source watchtowr-cloud-integration-aws-hosts `
 -Status verified `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -DeletedAt 2022-02-13T02:10:00.000000Z `
 -Id 123 `
 -Name watchtowr.com `
 -BusinessUnits null `
 -Live true `
 -DnsRecords [{&quot;id&quot;:1690,&quot;name&quot;:&quot;example.com&quot;,&quot;type&quot;:&quot;A&quot;,&quot;ttl&quot;:922,&quot;value&quot;:&quot;123.123.123.123&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;},{&quot;id&quot;:1685,&quot;name&quot;:&quot;example.com&quot;,&quot;type&quot;:&quot;AAAA&quot;,&quot;ttl&quot;:2687,&quot;value&quot;:&quot;0000:0000:0000:0000:0000:ffff:7b7b:7b7b&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;}] `
 -Metadata {&quot;region&quot;:&quot;us-west-1&quot;,&quot;service&quot;:&quot;AWS&quot;} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;domain&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:10,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;domain&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium `
 -Infrastructure null `
 -EngineSettings null
```

- Convert the resource to JSON
```powershell
$ClientDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

