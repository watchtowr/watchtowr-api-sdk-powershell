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
**IntegrationType** | **String** | Integration type. Valid values: aws, azure, googlecloud, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr, tenable | [optional] 
**IntegrationId** | **Decimal** | Integration ID | [optional] 
**IncludeAllIntegrations** | **Boolean** | Whether to include all integrations | 
**CreatedAt** | [**SystemCollectionsHashtable**](.md) | Created At | 

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
 -IncludeAllIntegrations false `
 -CreatedAt 2022-02-13T02:10:00.000000Z
```

- Convert the resource to JSON
```powershell
$ClientBusinessUnitRuleDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

