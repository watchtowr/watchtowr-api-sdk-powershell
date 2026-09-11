# ClientSeedDataAssetLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID of the resolved asset | 
**Type** | **String** | Type of the resolved asset. Matches the asset type values used elsewhere in the API (e.g. domain, subdomain, ip, ipRange, saasPlatform, ...). | 

## Examples

- Prepare the resource
```powershell
$ClientSeedDataAssetLink = Initialize-WatchtowrAPIClientSeedDataAssetLink  -Id 42 `
 -Type domain
```

- Convert the resource to JSON
```powershell
$ClientSeedDataAssetLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

