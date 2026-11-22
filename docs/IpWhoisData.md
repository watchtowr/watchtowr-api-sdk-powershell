# IpWhoisData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The unique identifier for the WHOIS record. | 
**VarData** | [**IpWhoisDataObject**](IpWhoisDataObject.md) |  | 
**Raw** | **String** | The full WHOIS text of the record. | 
**Normalized** | [**NormalizedWhoisIp**](NormalizedWhoisIp.md) | Structured, best-effort reading of the WHOIS record (schema version 1). Returned only when it is enabled for your tenant. Null when the record is not structured yet. WHOIS has no standard format: &#x60;raw&#x60; stays the reference. | [optional] 

## Examples

- Prepare the resource
```powershell
$IpWhoisData = Initialize-WatchtowrAPIIpWhoisData  -Id 1 `
 -VarData null `
 -Raw NetRange:       45.33.0.0 - 45.33.127.255
CIDR:           45.33.0.0/17
NetName:        LINODE-US
            ... `
 -Normalized null
```

- Convert the resource to JSON
```powershell
$IpWhoisData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

