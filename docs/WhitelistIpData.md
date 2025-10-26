# WhitelistIpData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | IP address ID | 
**Ip** | **String** | IP address or CIDR range | 
**Description** | **String** | Description of the IP address | 
**CreatedAt** | **System.DateTime** | Creation timestamp | 
**UpdatedAt** | **System.DateTime** | Last update timestamp | 

## Examples

- Prepare the resource
```powershell
$WhitelistIpData = Initialize-WatchtowrAPIWhitelistIpData  -Id 1 `
 -Ip 192.168.1.1 `
 -Description Office network `
 -CreatedAt 2024-01-01T00:00Z `
 -UpdatedAt 2024-01-01T00:00Z
```

- Convert the resource to JSON
```powershell
$WhitelistIpData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

