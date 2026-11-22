# NormalizedWhoisAsn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Number** | **Int32** | AS number. | 
**Cidr** | **String** | Network block (CIDR) that the ASN lookup matched. | 
**CountryCode** | **String** | Country code from the ASN lookup. | 
**Registry** | **String** | Regional internet registry. | 
**Description** | **String** | Name of the autonomous system. | 
**AllocatedAt** | **System.DateTime** | Allocation date (YYYY-MM-DD). | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisAsn = Initialize-WatchtowrAPINormalizedWhoisAsn  -Number 64496 `
 -Cidr 192.0.2.0/24 `
 -CountryCode US `
 -Registry arin `
 -Description EXAMPLE-AS, US `
 -AllocatedAt Fri Mar 14 00:00:00 UTC 2014
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisAsn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

