# WatchtowrAPI.WatchtowrAPI\Api.AdversaryIntelligenceApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AdversaryIntelligenceDetails**](AdversaryIntelligenceApi.md#Get-AdversaryIntelligenceDetails) | **GET** /api/client/adversary-intelligence/show/{attackerId} | Get Adversary Details
[**Get-ListAdversaryIntelligence**](AdversaryIntelligenceApi.md#Get-ListAdversaryIntelligence) | **GET** /api/client/adversary-intelligence/list | List Adversaries


<a id="Get-AdversaryIntelligenceDetails"></a>
# **Get-AdversaryIntelligenceDetails**
> ClientAdversaryIntelData Get-AdversaryIntelligenceDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttackerId] <Decimal><br>

Get Adversary Details

Get the details of a specific adversary by attacker ID. The `isAffected` flag and `affectedKbEntryIds` are scoped to the requesting user’s business units and the organization’s finding impact threshold.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AttackerId = 8.14 # Decimal | The numeric attacker ID of the adversary to retrieve.

# Get Adversary Details
try {
    $Result = Get-AdversaryIntelligenceDetails -AttackerId $AttackerId
} catch {
    Write-Host ("Exception occurred when calling Get-AdversaryIntelligenceDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AttackerId** | **Decimal**| The numeric attacker ID of the adversary to retrieve. | 

### Return type

[**ClientAdversaryIntelData**](ClientAdversaryIntelData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListAdversaryIntelligence"></a>
# **Get-ListAdversaryIntelligence**
> PaginatedAdversaryIntel Get-ListAdversaryIntelligence<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List Adversaries

List adversaries (threat actors) tracked by the watchTowr Adversary Intelligence engine. The `isAffected` flag is scoped to the requesting user’s business units and the organization’s finding impact threshold.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$Search = "Cl0p" # String | Search adversaries by name or alias. (optional)

# List Adversaries
try {
    $Result = Get-ListAdversaryIntelligence -Page $Page -PageSize $PageSize -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-ListAdversaryIntelligence: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **Search** | **String**| Search adversaries by name or alias. | [optional] 

### Return type

[**PaginatedAdversaryIntel**](PaginatedAdversaryIntel.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

