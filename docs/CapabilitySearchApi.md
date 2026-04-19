# WatchtowrAPI.WatchtowrAPI\Api.CapabilitySearchApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CapabilitySearch**](CapabilitySearchApi.md#Invoke-CapabilitySearch) | **GET** /api/client/capability-search | Capability Search


<a id="Invoke-CapabilitySearch"></a>
# **Invoke-CapabilitySearch**
> CapabilitySearchResponse Invoke-CapabilitySearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

Capability Search

Search hunts by title, CVEs, and TTP Library. Returns paginated hunts with CVE IDs and matching TTP Library tactics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Query = "CVE-2024-3400" # String | Search query for hunts, CVEs, and TTP Library (min 3 characters)
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# Capability Search
try {
    $Result = Invoke-CapabilitySearch -Query $Query -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Invoke-CapabilitySearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | **String**| Search query for hunts, CVEs, and TTP Library (min 3 characters) | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**CapabilitySearchResponse**](CapabilitySearchResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

