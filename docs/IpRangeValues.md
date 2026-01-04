# IpRangeValues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cidr** | **String** | CIDR for IP Range (e.g., &quot;&quot;192.168.1.0/24&quot;&quot;) | 
**Asn** | **String** | ASN for IP Range (e.g., &quot;&quot;AS16509&quot;&quot;) | 

## Examples

- Prepare the resource
```powershell
$IpRangeValues = Initialize-WatchtowrAPIIpRangeValues  -Cidr 192.168.1.0/24 `
 -Asn AS16509
```

- Convert the resource to JSON
```powershell
$IpRangeValues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

