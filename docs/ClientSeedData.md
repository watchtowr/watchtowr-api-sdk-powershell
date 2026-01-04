# ClientSeedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Descriptive title for the new asset | 
**Type** | **String** | Asset Type for the new asset. Valid asset types are: [domain, subdomain, ip, ipRange, repository, cloudStorage, container, mobileApp, saasPlatform, apiDocumentation, packageManager] | 
**Value** | **String** | Value for the asset to be added. | 
**Values** | [**IpRangeValues**](IpRangeValues.md) | Values object for ipRange asset type. Must contain both cidr and asn fields. Required when type is ipRange. | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientSeedData = Initialize-WatchtowrAPIClientSeedData  -Title Main Website `
 -Type subdomain `
 -Value www.watchTowr.com `
 -Values null
```

- Convert the resource to JSON
```powershell
$ClientSeedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

