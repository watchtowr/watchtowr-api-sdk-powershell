# NormalizedWhoisQuality
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | &#x60;complete&#x60;: all key fields were found. &#x60;partial&#x60;: some key fields are missing. &#x60;failed&#x60;: no usable field; use &#x60;raw&#x60;. | 
**Redacted** | **String[]** | JSON paths of the fields that the registry withheld for privacy. | 
**ProviderFlag** | **String** | Data-quality flag that the provider reported. | 
**Warnings** | **String[]** | Warning codes about the record. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisQuality = Initialize-WatchtowrAPINormalizedWhoisQuality  -Status complete `
 -Redacted [&quot;contacts[0].email&quot;] `
 -ProviderFlag PARTIAL_DATA `
 -Warnings []
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisQuality | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

