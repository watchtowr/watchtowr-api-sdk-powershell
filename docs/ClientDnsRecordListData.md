# ClientDnsRecordListData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientAssetDnsRecord[]**](ClientAssetDnsRecord.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientDnsRecordListData = Initialize-WatchtowrAPIClientDnsRecordListData  -VarData [{&quot;id&quot;:1690,&quot;name&quot;:&quot;example.com&quot;,&quot;type&quot;:&quot;A&quot;,&quot;ttl&quot;:922,&quot;value&quot;:&quot;123.123.123.123&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;},{&quot;id&quot;:1685,&quot;name&quot;:&quot;example.com&quot;,&quot;type&quot;:&quot;AAAA&quot;,&quot;ttl&quot;:2687,&quot;value&quot;:&quot;0000:0000:0000:0000:0000:ffff:7b7b:7b7b&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;},{&quot;id&quot;:1684,&quot;name&quot;:&quot;example.com&quot;,&quot;type&quot;:&quot;NS&quot;,&quot;ttl&quot;:17366,&quot;value&quot;:&quot;ns-1342.example.org&quot;,&quot;discovered_on&quot;:&quot;2024-08-19T08:58:26.000Z&quot;}] `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ClientDnsRecordListData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

