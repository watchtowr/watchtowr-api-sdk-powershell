# IpWhoisDataObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Asn** | **String** | Number of the autonomous system (ASN) that announces the IP. | [optional] 
**AsnCidr** | **String** | Network block (CIDR) the ASN lookup matched. | [optional] 
**AsnCountryCode** | **String** | Country code from the ASN lookup. | [optional] 
**AsnDate** | **String** | Allocation date from the ASN lookup. | [optional] 
**AsnDescription** | **String** | Name of the autonomous system. | [optional] 
**AsnRegistry** | **String** | Regional internet registry. | [optional] 
**Query** | **String** | IP address that was looked up. For an IP range, an address inside the range. | [optional] 
**Nets** | [**IpWhoisNet[]**](IpWhoisNet.md) | Network blocks parsed from the registry WHOIS record. | [optional] 
**Nir** | [**SystemCollectionsHashtable**](.md) | National internet registry details, when the registry refers to one. | [optional] 
**Referral** | [**SystemCollectionsHashtable**](.md) | Referral WHOIS details, when the registry refers to another server. | [optional] 
**RawReferral** | **String** | Raw referral WHOIS text. | [optional] 
**Message** | **String** | Explains why no WHOIS record is present. When set, it is the only field returned. | [optional] 

## Examples

- Prepare the resource
```powershell
$IpWhoisDataObject = Initialize-WatchtowrAPIIpWhoisDataObject  -Asn 63949 `
 -AsnCidr 45.33.0.0/19 `
 -AsnCountryCode US `
 -AsnDate 2015-03-20 `
 -AsnDescription AKAMAI-LINODE-AP Akamai Connected Cloud, SG `
 -AsnRegistry arin `
 -Query 45.33.2.79 `
 -Nets null `
 -Nir null `
 -Referral null `
 -RawReferral null `
 -Message This is a private ip address
```

- Convert the resource to JSON
```powershell
$IpWhoisDataObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

