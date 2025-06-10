# ServiceListing
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**PortId** | **Decimal** | Port ID | 
**Ip** | **String** | IP Address | 
**Domain** | **String** | IP Address | 
**Subdomain** | **String** | IP Address | 
**AssetType** | **String** | Type of asset associated with this service | 
**AssetId** | **Decimal** | Id of asset associated with this service | 
**AssetName** | **String** | Name of asset associated with this service | 
**Port** | **Decimal** | Port number | [optional] 
**Type** | **String** | Port Protocol | [optional] 
**Country** | **String** | Country code | [optional] 
**Banner** | **String** | Banner | [optional] 
**Service** | **String** | Service | [optional] 
**Source** | **String** | Asset source | [optional] 
**LastSeen** | **System.DateTime** | Last seen date Range | 
**Technologies** | [**Technology[]**](Technology.md) | Technology list | 
**ServiceTypes** | [**ServiceType[]**](ServiceType.md) | Service types | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) | Business Units | 

## Examples

- Prepare the resource
```powershell
$ServiceListing = Initialize-PSOpenAPIToolsServiceListing  -Id 1 `
 -PortId 1 `
 -Ip 123.123.123.123 `
 -Domain example.com `
 -Subdomain sub.example.com `
 -AssetType IP `
 -AssetId 1 `
 -AssetName 1 `
 -Port 80 `
 -Type TCP `
 -Country US `
 -Banner Apache/2.4.7 `
 -Service HTTPS `
 -Source DNS Refresh `
 -LastSeen null `
 -Technologies null `
 -ServiceTypes null `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ServiceListing | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

