# CreateOrganisationWhitelistIpDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **String** | IP address or CIDR range to whitelist | 
**Description** | **String** | Description of the IP address | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateOrganisationWhitelistIpDto = Initialize-WatchtowrAPICreateOrganisationWhitelistIpDto  -Ip 192.168.1.1 `
 -Description Office network
```

- Convert the resource to JSON
```powershell
$CreateOrganisationWhitelistIpDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

