# NormalizedWhoisSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** | WHOIS provider that the record came from. Null when it was built from stored data or by the platform. | 
**Format** | **String** | Form of the source data. &#x60;none&#x60;: not parsed from a source (a private IP address, or a total failure). | 
**Server** | **String** | WHOIS or RDAP server that answered. | 
**FetchedAt** | **System.DateTime** | When the source data was fetched. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**IncludesReferral** | **Boolean** | Whether the record includes data from a referral WHOIS server. | 
**NormalizerVersion** | **String** | Semantic version of the normalizer that built the record. | 
**Parser** | **String** | Parser and its version, for text records. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisSource = Initialize-WatchtowrAPINormalizedWhoisSource  -Provider whoisxmlapi `
 -Format text `
 -Server whois.verisign-grs.com `
 -FetchedAt 2005-11-27T02:11:28Z `
 -IncludesReferral false `
 -NormalizerVersion 1.0.0 `
 -Parser python-whois 0.9.6
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

