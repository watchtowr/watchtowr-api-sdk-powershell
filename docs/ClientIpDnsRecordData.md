# ClientIpDnsRecordData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsRecordsTotalCount** | **Decimal** |  | 
**DnsRecordsOwned** | [**ClientIpDnsRecordOwnedData**](ClientIpDnsRecordOwnedData.md) |  | 
**DnsRecordsPointingAt** | [**ClientIpDnsRecordPointingAtData**](ClientIpDnsRecordPointingAtData.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientIpDnsRecordData = Initialize-PSOpenAPIToolsClientIpDnsRecordData  -DnsRecordsTotalCount null `
 -DnsRecordsOwned null `
 -DnsRecordsPointingAt null
```

- Convert the resource to JSON
```powershell
$ClientIpDnsRecordData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

