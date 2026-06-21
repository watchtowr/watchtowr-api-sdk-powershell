# WhoisDataObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Org** | **String** | org | [optional] 
**City** | **String** | city | [optional] 
**Name** | **String** | name | [optional] 
**State** | **String** | state | [optional] 
**Dnssec** | **String** | dnssec | [optional] 
**Emails** | [**WhoisDataObjectEmails**](WhoisDataObjectEmails.md) |  | [optional] 
**Status** | [**WhoisDataObjectStatus**](WhoisDataObjectStatus.md) |  | [optional] 
**Address** | **String** | address | [optional] 
**Country** | **String** | country | [optional] 
**Zipcode** | **String** | zipcode | [optional] 
**Registrar** | **String** | registrar | [optional] 
**DomainName** | **String** | domain_name | [optional] 
**NameServers** | [**WhoisDataObjectNameServers**](WhoisDataObjectNameServers.md) |  | [optional] 
**ReferralUrl** | **String** | referral_url | [optional] 
**WhoisServer** | **String** | whois_server | [optional] 
**CreationDate** | [**WhoisDataObjectCreationDate**](WhoisDataObjectCreationDate.md) |  | [optional] 
**ExpirationDate** | [**WhoisDataObjectExpirationDate**](WhoisDataObjectExpirationDate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WhoisDataObject = Initialize-WatchtowrAPIWhoisDataObject  -Org ACME Corp `
 -City Singapore `
 -Name John Doe `
 -State Singapore `
 -Dnssec unsigned `
 -Emails null `
 -Status null `
 -Address Singapore 123456 `
 -Country Singapore `
 -Zipcode 123456 `
 -Registrar GoDaddy.com, LLC `
 -DomainName example.com `
 -NameServers null `
 -ReferralUrl  `
 -WhoisServer whois.godaddy.com `
 -CreationDate null `
 -ExpirationDate null
```

- Convert the resource to JSON
```powershell
$WhoisDataObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

