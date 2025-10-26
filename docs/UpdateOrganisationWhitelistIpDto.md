# UpdateOrganisationWhitelistIpDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | IP address ID | 
**Ip** | **String** | IP address or CIDR range to whitelist | 
**Description** | **String** | Description of the IP address | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateOrganisationWhitelistIpDto = Initialize-WatchtowrAPIUpdateOrganisationWhitelistIpDto  -Id 1 `
 -Ip 192.168.1.1 `
 -Description Office network
```

- Convert the resource to JSON
```powershell
$UpdateOrganisationWhitelistIpDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

