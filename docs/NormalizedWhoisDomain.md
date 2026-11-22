# NormalizedWhoisDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaVersion** | **Decimal** | Schema version of the record. | 
**Kind** | **String** | Kind of the record. | 
**Source** | [**NormalizedWhoisSource**](NormalizedWhoisSource.md) |  | 
**Quality** | [**NormalizedWhoisQuality**](NormalizedWhoisQuality.md) |  | 
**Domain** | [**NormalizedWhoisDomainName**](NormalizedWhoisDomainName.md) |  | 
**Dates** | [**NormalizedWhoisDates**](NormalizedWhoisDates.md) |  | 
**DatesRaw** | [**NormalizedWhoisDatesRaw**](NormalizedWhoisDatesRaw.md) |  | 
**Registrar** | [**NormalizedWhoisRegistrar**](NormalizedWhoisRegistrar.md) |  | 
**Reseller** | **String** | Reseller of the domain. | 
**Contacts** | [**NormalizedWhoisContact[]**](NormalizedWhoisContact.md) | Contacts in the order registrant, administrative, technical, billing. Only the roles that the record has. | 
**NameServers** | **String[]** | Name servers: lower case, unique, sorted. | 
**Status** | **String[]** | RDAP status values (the IANA RDAP JSON Values registry): unique, sorted. | 
**StatusRaw** | **String[]** | Status values as the source wrote them, without ICANN URLs. | 
**Dnssec** | **Boolean** | Whether the domain is signed with DNSSEC. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisDomain = Initialize-WatchtowrAPINormalizedWhoisDomain  -SchemaVersion 1 `
 -Kind domain `
 -Source null `
 -Quality null `
 -Domain null `
 -Dates null `
 -DatesRaw null `
 -Registrar null `
 -Reseller null `
 -Contacts null `
 -NameServers [&quot;a.iana-servers.net&quot;,&quot;b.iana-servers.net&quot;] `
 -Status [&quot;client transfer prohibited&quot;] `
 -StatusRaw [&quot;clientTransferProhibited&quot;] `
 -Dnssec true
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

