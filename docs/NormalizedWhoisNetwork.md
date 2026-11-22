# NormalizedWhoisNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cidr** | **String[]** | CIDRs of the block. | 
**StartAddress** | **String** | First address of the block. | 
**EndAddress** | **String** | Last address of the block. | 
**Name** | **String** | Network name. | 
**Handle** | **String** | Registry handle. | 
**Organization** | **String** | Organization that holds the block. | 
**Description** | **String** | Description lines, joined with newlines. | 
**CountryCode** | **String** | Country code. | 
**Region** | **String** | State or region. | 
**City** | **String** | City. | 
**Address** | **String** | Street address. | 
**PostalCode** | **String** | Postal code. | 
**Emails** | **String[]** | Contact emails of the block. | 
**AbuseEmail** | **String** | Abuse contact email. | 
**CreatedAt** | **System.DateTime** | Registration date. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**UpdatedAt** | **System.DateTime** | Last update date. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**FromReferral** | **Boolean** | Whether the block came from a referral WHOIS server. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisNetwork = Initialize-WatchtowrAPINormalizedWhoisNetwork  -Cidr [&quot;192.0.2.0/24&quot;] `
 -StartAddress 192.0.2.0 `
 -EndAddress 192.0.2.255 `
 -Name EXAMPLE-NET `
 -Handle NET-192-0-2-0-1 `
 -Organization Example Networks, Inc. `
 -Description null `
 -CountryCode US `
 -Region CA `
 -City Example City `
 -Address 100 Example Way `
 -PostalCode 90000 `
 -Emails [&quot;abuse@example.net&quot;] `
 -AbuseEmail abuse@example.net `
 -CreatedAt 2005-11-27T02:11:28Z `
 -UpdatedAt 2005-11-27T02:11:28Z `
 -FromReferral false
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

