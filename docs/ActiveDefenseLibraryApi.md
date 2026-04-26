# WatchtowrAPI.WatchtowrAPI\Api.ActiveDefenseLibraryApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ActiveDefenseLibraryRuleDetails**](ActiveDefenseLibraryApi.md#Get-ActiveDefenseLibraryRuleDetails) | **GET** /api/client/active-defense-library/show/{ruleId} | Get Active Defense Rule Details
[**Get-ActiveDefenseLibraryRuleProviderTemplate**](ActiveDefenseLibraryApi.md#Get-ActiveDefenseLibraryRuleProviderTemplate) | **GET** /api/client/active-defense-library/show/{ruleId}/provider/show/{provider} | Get Active Defense Rule Provider Template
[**Get-ListActiveDefenseLibraryRules**](ActiveDefenseLibraryApi.md#Get-ListActiveDefenseLibraryRules) | **GET** /api/client/active-defense-library/list | List Active Defense Rules


<a id="Get-ActiveDefenseLibraryRuleDetails"></a>
# **Get-ActiveDefenseLibraryRuleDetails**
> ClientActiveDefenseRuleData Get-ActiveDefenseLibraryRuleDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <Decimal><br>

Get Active Defense Rule Details

Get the details of a specific Active Defense Library rule by rule ID. The `findingsCount` and `affectedKbEntryIds` are scoped to the requesting user’s business units and the organization’s finding impact threshold.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RuleId = 8.14 # Decimal | The numeric rule ID of the Active Defense Library rule to retrieve.

# Get Active Defense Rule Details
try {
    $Result = Get-ActiveDefenseLibraryRuleDetails -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Get-ActiveDefenseLibraryRuleDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **Decimal**| The numeric rule ID of the Active Defense Library rule to retrieve. | 

### Return type

[**ClientActiveDefenseRuleData**](ClientActiveDefenseRuleData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ActiveDefenseLibraryRuleProviderTemplate"></a>
# **Get-ActiveDefenseLibraryRuleProviderTemplate**
> ClientActiveDefenseRuleProviderData Get-ActiveDefenseLibraryRuleProviderTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <String><br>

Get Active Defense Rule Provider Template

Get the provider-specific rule template (e.g. Cloudflare expression, AWS WAF CFN, Fastly VCL) for a single Active Defense Library rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RuleId = 8.14 # Decimal | The numeric rule ID of the Active Defense Library rule.
$Provider = "cloudflare" # String | The WAF provider whose rule template should be returned.

# Get Active Defense Rule Provider Template
try {
    $Result = Get-ActiveDefenseLibraryRuleProviderTemplate -RuleId $RuleId -Provider $Provider
} catch {
    Write-Host ("Exception occurred when calling Get-ActiveDefenseLibraryRuleProviderTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **Decimal**| The numeric rule ID of the Active Defense Library rule. | 
 **Provider** | **String**| The WAF provider whose rule template should be returned. | 

### Return type

[**ClientActiveDefenseRuleProviderData**](ClientActiveDefenseRuleProviderData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListActiveDefenseLibraryRules"></a>
# **Get-ListActiveDefenseLibraryRules**
> PaginatedActiveDefenseRules Get-ListActiveDefenseLibraryRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List Active Defense Rules

List Active Defense Library rules. Rule visibility, ordering and any affected-vulnerability prioritisation are scoped to the requesting user’s business units and the organization’s finding impact threshold.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$Search = "CVE-2023-34362" # String | Search rules by rule name, CVE ID, or watchTowr vulnerability ID. (optional)

# List Active Defense Rules
try {
    $Result = Get-ListActiveDefenseLibraryRules -Page $Page -PageSize $PageSize -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-ListActiveDefenseLibraryRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **Search** | **String**| Search rules by rule name, CVE ID, or watchTowr vulnerability ID. | [optional] 

### Return type

[**PaginatedActiveDefenseRules**](PaginatedActiveDefenseRules.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

