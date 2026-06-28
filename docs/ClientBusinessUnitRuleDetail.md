# ClientBusinessUnitRuleDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Rule name | 
**KeywordMatcher** | **String** | Keyword for matching assets. Supports wildcard patterns: %.sg, %abc%, %abc.com, abc.com. Wildcards can be defined using %. | [optional] 
**KeywordRuleType** | **String** | Keyword rule type. HOSTNAME: matches domain/subdomain names (default). CNAME: matches CNAME DNS record values. TLS_SSL: matches TLS/SSL certificate subject names. | [optional] 
**Country** | **String** | Geographical location 2-letter country code (ISO 3166-1 alpha-2). Examples: SG, US, GB, AU | [optional] 
**CascadeSubdomain** | **Boolean** | Whether to cascade to subdomains | 
**CascadeIp** | **Boolean** | Whether to cascade to IPs | 
**IntegrationType** | **String** | Integration type (deprecated — use integrations[0].integration_type instead) | [optional] 
**IntegrationId** | **Decimal** | Integration ID (deprecated — use integrations[0].integration_id instead) | [optional] 
**Integrations** | [**ClientIntegrationItemDto[]**](ClientIntegrationItemDto.md) | List of integrations matched by this rule | [optional] 
**IncludeAllIntegrations** | **Boolean** | Whether to include all integrations | 
**CreatedAt** | **System.DateTime** | Created At | 

## Examples

- Prepare the resource
```powershell
$ClientBusinessUnitRuleDetail = Initialize-WatchtowrAPIClientBusinessUnitRuleDetail  -Id 1 `
 -Name Singapore Assets Rule `
 -KeywordMatcher example.com `
 -KeywordRuleType HOSTNAME `
 -Country SG `
 -CascadeSubdomain true `
 -CascadeIp true `
 -IntegrationType aws `
 -IntegrationId 1 `
 -Integrations null `
 -IncludeAllIntegrations false `
 -CreatedAt 2022-02-13T02:10Z
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitRuleDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

