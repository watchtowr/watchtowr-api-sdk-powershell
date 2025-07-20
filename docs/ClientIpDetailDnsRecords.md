# ClientIpDetailDnsRecords
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsRecordsOwned** | **String[]** |  | 
**DnsRecordsPointingAt** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ClientIpDetailDnsRecords = Initialize-WatchtowrAPIClientIpDetailDnsRecords  -DnsRecordsOwned [{&quot;id&quot;:1351,&quot;name&quot;:&quot;123.123.123.123.in-addr.arpa&quot;,&quot;type&quot;:&quot;PTR&quot;,&quot;ttl&quot;:300,&quot;value&quot;:&quot;123.123.123.123.in-addr.arpa&quot;,&quot;discovered_on&quot;:&quot;2024-06-11T08:33:59.000Z&quot;}] `
 -DnsRecordsPointingAt [{&quot;id&quot;:1289,&quot;name&quot;:&quot;example-dnsRecord-1289.com&quot;,&quot;type&quot;:&quot;A&quot;,&quot;ttl&quot;:3600,&quot;value&quot;:&quot;example-dnsRecord-1289.com&quot;,&quot;discovered_on&quot;:&quot;2024-06-11T06:09:09.000Z&quot;,&quot;asset&quot;:{&quot;id&quot;:102,&quot;name&quot;:&quot;example-domain-102.com&quot;}}]
```

- Convert the resource to JSON
```powershell
$ClientIpDetailDnsRecords | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

