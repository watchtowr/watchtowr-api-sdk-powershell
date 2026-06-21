# ServiceListing
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**PortId** | **Decimal** | Port ID | 
**Ip** | **String** | IP Address | [optional] 
**Hostname** | **String** | Hostname | [optional] 
**Port** | **Decimal** | Port number | [optional] 
**Type** | **String** | Port Protocol | [optional] 
**Country** | **String** | Country code | [optional] 
**Banner** | **String** | Banner | [optional] 
**Service** | **String** | Service | [optional] 
**Source** | **String** | Asset source | [optional] 
**LastSeen** | **System.DateTime** | Last seen date Range | [optional] 
**Technologies** | [**Technology[]**](Technology.md) | Technology list | 
**ServiceTypes** | [**ServiceType[]**](ServiceType.md) | Service types | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) | Business Units | 
**IsConcerning** | **Boolean** | Whether the discovered network service is concerning | 
**Suppressed** | **Boolean** | Whether the service is suppressed | 
**SuppressedAt** | **System.DateTime** | Suppressed at timestamp | [optional] 
**IsPermanentSuppression** | **Boolean** | Whether the service is permanently suppressed | [optional] 
**IpId** | **Decimal** | IP ID | [optional] 
**State** | **String** | Port State | [optional] 
**FindingId** | **Decimal** | Finding ID associated with the service | [optional] 
**SuppressedById** | **Decimal** | ID of the user who suppressed the service | [optional] 

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
 -LastSeen 2022-02-22T22:00Z `
 -Technologies null `
 -ServiceTypes null `
 -BusinessUnits null `
 -IsConcerning true `
 -Suppressed true `
 -SuppressedAt 2022-02-22T22:00Z `
 -IsPermanentSuppression true `
 -IpId 1 `
 -State open `
 -FindingId 1 `
 -SuppressedById 1
```

- Convert the resource to JSON
```powershell
$ServiceListing | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

