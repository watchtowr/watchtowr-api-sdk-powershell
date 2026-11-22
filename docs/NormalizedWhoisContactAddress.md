# NormalizedWhoisContactAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Street** | **String[]** | Street lines. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. A withheld street is &#x60;[&quot;&quot;redacted&quot;&quot;]&#x60;. | 
**City** | **String** | City. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**Region** | **String** | State or region. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**PostalCode** | **String** | Postal code. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 
**CountryCode** | **String** | ISO 3166-1 alpha-2 country code, upper case. The literal string &#x60;redacted&#x60; means that the registry withheld the value for privacy. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisContactAddress = Initialize-WatchtowrAPINormalizedWhoisContactAddress  -Street [&quot;100 Example Way&quot;] `
 -City Example City `
 -Region CA `
 -PostalCode 90000 `
 -CountryCode US
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisContactAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

