# ClientDnsRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Name** | **String** |  | 
**Type** | **String** |  | 
**Ttl** | **Decimal** | Time To Live | 
**Value** | **String** |  | 
**DiscoveredOn** | [**DatetimeDate**](DatetimeDate.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientDnsRecord = Initialize-PSOpenAPIToolsClientDnsRecord  -Id 1 `
 -Name watchtowr.com `
 -Type A `
 -Ttl 60 `
 -Value 123.123.123.123 `
 -DiscoveredOn 2022-02-13T02:10:00.000000Z
```

- Convert the resource to JSON
```powershell
$ClientDnsRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

