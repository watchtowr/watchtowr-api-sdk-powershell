# WatchtowrAPI.WatchtowrAPI\Api.PendingDomainsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListPendingDomains**](PendingDomainsApi.md#Get-ListPendingDomains) | **GET** /api/client/pending-domains/list | List Pending Domains


<a id="Get-ListPendingDomains"></a>
# **Get-ListPendingDomains**
> PaginatedClientPendingDomain Get-ListPendingDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List Pending Domains

List all pending domain assets with filtering and pagination support.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. (optional)
$Name = "example.com" # String | Filter by domain name (optional)
$Source = "example-source" # String | Filter by source that discovered the domain (optional)
$StartDate = (Get-Date) # System.DateTime | Filter by start date (ISO format) (optional)
$EndDate = (Get-Date) # System.DateTime | Filter by end date (ISO format) (optional)
$SortBy = "name" # String | Sort by field (optional) (default to "created_at")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")

# List Pending Domains
try {
    $Result = Get-ListPendingDomains -Page $Page -PageSize $PageSize -Name $Name -Source $Source -StartDate $StartDate -EndDate $EndDate -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Get-ListPendingDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. | [optional] 
 **Name** | **String**| Filter by domain name | [optional] 
 **Source** | **String**| Filter by source that discovered the domain | [optional] 
 **StartDate** | **System.DateTime**| Filter by start date (ISO format) | [optional] 
 **EndDate** | **System.DateTime**| Filter by end date (ISO format) | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;created_at&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]

### Return type

[**PaginatedClientPendingDomain**](PaginatedClientPendingDomain.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

