# WatchtowrAPI.WatchtowrAPI\Api.FindingRetestHistoryApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListFindingRetestHistory**](FindingRetestHistoryApi.md#Get-ListFindingRetestHistory) | **GET** /api/client/finding-retest-history/list | List Finding Retest History


<a id="Get-ListFindingRetestHistory"></a>
# **Get-ListFindingRetestHistory**
> PaginatedClientFindingRetestHistory Get-ListFindingRetestHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List Finding Retest History

List all finding retest history entries, ordered by creation date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$SortBy = "updated_at" # String | Sort by field (optional) (default to "created_at")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")

# List Finding Retest History
try {
    $Result = Get-ListFindingRetestHistory -Page $Page -PageSize $PageSize -BusinessUnitIds $BusinessUnitIds -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Get-ListFindingRetestHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;created_at&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]

### Return type

[**PaginatedClientFindingRetestHistory**](PaginatedClientFindingRetestHistory.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

