# CreateClientBusinessUnitRuleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Rule name | 
**Type** | **String** | Rule type | 
**KeywordMatcher** | **String** | Keyword for matching domains/subdomains (required when type is keyword) | [optional] 
**CountryCode** | **String** | Geographical location 2-letter country code (ISO 3166-1 alpha-2) for matching IPs (required when type is country). Examples: SG, US, GB, AU | [optional] 
**IntegrationType** | **String** | Integration type for matching cloud assets (required when type is integration). Valid values: aws, azure, googlecloud, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr, tenable | [optional] 
**IntegrationId** | **Decimal** | Integration ID for matching cloud assets (required when type is integration) | [optional] 
**CascadeSubdomain** | **Boolean** | Whether to cascade rule to subdomains | [optional] [default to $true]
**CascadeIp** | **Boolean** | Whether to cascade rule to IPs | [optional] [default to $true]
**IncludeAllIntegrations** | **Boolean** | Whether to include all integrations | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CreateClientBusinessUnitRuleDto = Initialize-WatchtowrAPICreateClientBusinessUnitRuleDto  -Name Singapore Assets Rule `
 -Type keyword `
 -KeywordMatcher example.com `
 -CountryCode SG `
 -IntegrationType aws `
 -IntegrationId 1 `
 -CascadeSubdomain true `
 -CascadeIp true `
 -IncludeAllIntegrations false
```

- Convert the resource to JSON
```powershell
$CreateClientBusinessUnitRuleDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

