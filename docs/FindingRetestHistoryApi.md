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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Severities] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Attempts] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetestRunStatuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetestResultStatuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FindingTitle] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FindingId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TriggeredBy] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetestStartDateFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetestStartDateTo] <System.Nullable[System.DateTime]><br>

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
$Severities = "critical" # String | Filter retests by a list of comma separated severities they're tagged with. (optional)
$Attempts = "oneAttempt" # String | Filter retests by a list of comma separated attempt types. (optional)
$RetestRunStatuses = "success" # String | Filter retests by a list of comma separated retest run statuses. (optional)
$RetestResultStatuses = "resolved" # String | Filter retests by a list of comma separated result statuses. (optional)
$FindingTitle = "SQL Injection" # String | Filter retests by finding title. (optional)
$AssetName = "example.com" # String | Filter retests by asset name. (optional)
$FindingId = "CORE-1234" # String | Filter retests by finding ID (e.g. CORE-1234 or 1234). (optional)
$TriggeredBy = "MyTriggeredBy" # String[] | Filter retests by a list of comma separated users who triggered them. (optional)
$RetestStartDateFrom = (Get-Date) # System.DateTime | Filter retests started after a given date and time. (optional)
$RetestStartDateTo = (Get-Date) # System.DateTime | Filter retests started before a given date and time. (optional)

# List Finding Retest History
try {
    $Result = Get-ListFindingRetestHistory -Page $Page -PageSize $PageSize -BusinessUnitIds $BusinessUnitIds -SortBy $SortBy -SortOrder $SortOrder -Severities $Severities -Attempts $Attempts -RetestRunStatuses $RetestRunStatuses -RetestResultStatuses $RetestResultStatuses -FindingTitle $FindingTitle -AssetName $AssetName -FindingId $FindingId -TriggeredBy $TriggeredBy -RetestStartDateFrom $RetestStartDateFrom -RetestStartDateTo $RetestStartDateTo
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
 **Severities** | **String**| Filter retests by a list of comma separated severities they&#39;re tagged with. | [optional] 
 **Attempts** | **String**| Filter retests by a list of comma separated attempt types. | [optional] 
 **RetestRunStatuses** | **String**| Filter retests by a list of comma separated retest run statuses. | [optional] 
 **RetestResultStatuses** | **String**| Filter retests by a list of comma separated result statuses. | [optional] 
 **FindingTitle** | **String**| Filter retests by finding title. | [optional] 
 **AssetName** | **String**| Filter retests by asset name. | [optional] 
 **FindingId** | **String**| Filter retests by finding ID (e.g. CORE-1234 or 1234). | [optional] 
 **TriggeredBy** | [**String[]**](String.md)| Filter retests by a list of comma separated users who triggered them. | [optional] 
 **RetestStartDateFrom** | **System.DateTime**| Filter retests started after a given date and time. | [optional] 
 **RetestStartDateTo** | **System.DateTime**| Filter retests started before a given date and time. | [optional] 

### Return type

[**PaginatedClientFindingRetestHistory**](PaginatedClientFindingRetestHistory.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

