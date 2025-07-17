# ClientIpRelatedDnsRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Name** | **String** |  | 
**Type** | **String** |  | 
**Ttl** | **Decimal** | Time To Live | 
**Value** | **String** |  | 
**DiscoveredOn** | [**DatetimeDate**](DatetimeDate.md) |  | 
**Asset** | [**ClientIpRelatedDnsRecordAsset**](ClientIpRelatedDnsRecordAsset.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientIpRelatedDnsRecord = Initialize-WatchtowrAPIClientIpRelatedDnsRecord  -Id 1 `
 -Name watchtowr.com `
 -Type A `
 -Ttl 60 `
 -Value 123.123.123.123 `
 -DiscoveredOn 2022-02-13T02:10:00.000000Z `
 -Asset null
```

- Convert the resource to JSON
```powershell
$ClientIpRelatedDnsRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

