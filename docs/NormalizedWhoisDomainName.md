# NormalizedWhoisDomainName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Domain name: lower-case ASCII (punycode), no trailing dot. | 
**UnicodeName** | **String** | Unicode form of an internationalized domain name. | 
**RegistryId** | **String** | Registry object ID of the domain. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisDomainName = Initialize-WatchtowrAPINormalizedWhoisDomainName  -Name example.com `
 -UnicodeName null `
 -RegistryId 2336799_DOMAIN_COM-VRSN
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisDomainName | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

