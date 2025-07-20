# ClientDnsRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | DNS Record ID | 
**Asset** | [**ClientDnsRecordAsset**](ClientDnsRecordAsset.md) | Asset information | 
**RecordName** | **String** | Identifies the resource this record resolves to. | 
**Type** | **String** | The DNS record type defines the purpose or function of the record, such as domain name resolution, email routing, and more. | 
**Ttl** | **Decimal** | Time to live (TTL) controls how long each record is cached by resolvers. | 
**Value** | **String** | The value of a DNS record, depending on the record type. For example, the IP address of the origin server that hosts the web content served by an A or AAAA record. | 
**CreatedAt** | **System.DateTime** | Creation date | 

## Examples

- Prepare the resource
```powershell
$ClientDnsRecord = Initialize-WatchtowrAPIClientDnsRecord  -Id 789 `
 -Asset null `
 -RecordName example.com `
 -Type A `
 -Ttl 300 `
 -Value 192.168.1.1 `
 -CreatedAt 2023-01-01T12:00Z
```

- Convert the resource to JSON
```powershell
$ClientDnsRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

