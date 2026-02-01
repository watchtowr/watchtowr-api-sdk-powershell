# ServiceListing
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**PortId** | **Decimal** | Port ID | 
**Ip** | **String** | IP Address | 
**Hostname** | **String** | Hostname | 
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
**IsConcerning** | **Boolean** | Whether the discovered network service is concerning | 
**Suppressed** | **Boolean** | Whether the service is suppressed | 
**SuppressedAt** | **System.DateTime** | Suppressed at timestamp | [optional] 
**IsPermanentSuppression** | **Boolean** | Whether the service is permanently suppressed | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceListing = Initialize-WatchtowrAPIServiceListing  -Id 1 `
 -PortId 1 `
 -Ip 123.123.123.123 `
 -Hostname sub.example.com `
 -Port 80 `
 -Type TCP `
 -Country US `
 -Banner Apache/2.4.7 `
 -Service HTTPS `
 -Source DNS Refresh `
 -LastSeen null `
 -Technologies null `
 -ServiceTypes null `
 -BusinessUnits null `
 -IsConcerning true `
 -Suppressed true `
 -SuppressedAt null `
 -IsPermanentSuppression true
```

- Convert the resource to JSON
```powershell
$ServiceListing | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

