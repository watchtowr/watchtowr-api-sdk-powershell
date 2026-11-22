# NormalizedWhoisIp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaVersion** | **Decimal** | Schema version of the record. | 
**Kind** | **String** | Kind of the record. | 
**Source** | [**NormalizedWhoisSource**](NormalizedWhoisSource.md) |  | 
**Quality** | [**NormalizedWhoisQuality**](NormalizedWhoisQuality.md) |  | 
**Ip** | **String** | IP address that was looked up. | 
**Asn** | [**NormalizedWhoisAsn**](NormalizedWhoisAsn.md) |  | 
**Networks** | [**NormalizedWhoisNetwork[]**](NormalizedWhoisNetwork.md) | Network blocks, most specific first. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisIp = Initialize-WatchtowrAPINormalizedWhoisIp  -SchemaVersion 1 `
 -Kind ip `
 -Source null `
 -Quality null `
 -Ip 192.0.2.10 `
 -Asn null `
 -Networks null
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisIp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

