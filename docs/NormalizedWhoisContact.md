# NormalizedWhoisContact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | **String** | Role of the contact. | 
**Name** | **String** | Name. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**Organization** | **String** | Organization. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**Email** | **String** | Email. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**Phone** | **String** | Phone. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**Fax** | **String** | Fax. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**ContactUri** | **String** | Web form or URI to contact the holder (http or https only). | 
**Address** | [**NormalizedWhoisContactAddress**](NormalizedWhoisContactAddress.md) |  | 
**PrivacyService** | **Boolean** | Whether the contact is a privacy or proxy service instead of the real holder. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisContact = Initialize-WatchtowrAPINormalizedWhoisContact  -Role registrant `
 -Name redacted `
 -Organization Example Org `
 -Email registrant@example.com `
 -Phone null `
 -Fax null `
 -ContactUri https://www.domainsbyproxy.com/whoiscontact `
 -Address null `
 -PrivacyService false
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisContact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

