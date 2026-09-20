# WatchtowrAPI.WatchtowrAPI\Api.CredentialAttemptLogsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListCredentialAttemptLogs**](CredentialAttemptLogsApi.md#Get-ListCredentialAttemptLogs) | **GET** /api/client/credential-attempt-logs/list | List Credential Attempt Logs


<a id="Get-ListCredentialAttemptLogs"></a>
# **Get-ListCredentialAttemptLogs**
> PaginatedClientCredentialsLog Get-ListCredentialAttemptLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Technologies] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sources] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <System.Nullable[Decimal][]><br>

List Credential Attempt Logs

List all credential attempt log entries, ordered by attempted date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 8.14 # Decimal | Page number (optional) (default to 1)
$PageSize = 8.14 # Decimal | Number of items per page (optional) (default to 10)
$Technologies = "MyTechnologies" # String[] | Filter by technologies (optional)
$AssetName = "MyAssetName" # String | Filter by asset name (supports partial matching) (optional)
$Username = "MyUsername" # String | Filter by username (supports partial matching) (optional)
$Statuses = "MyStatuses" # String[] | Filter by statuses (optional)
$CreatedFrom = "2022-02-22T22:00:00.000Z" # String | Filter credential attempt logs created after a given date and time. (optional)
$CreatedTo = "2022-02-23T22:00:00.000Z" # String | Filter credential attempt logs created before a given date and time. (optional)
$SortBy = "attempted_at" # String | Sort by field (optional) (default to "attempted_at")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")
$Sources = "Compromised Endpoint" # String[] | Filter by sources (optional)
$BusinessUnitIds = 0 # Decimal[] | Filter by business unit IDs (for users with business unit restrictions) (optional)

# List Credential Attempt Logs
try {
    $Result = Get-ListCredentialAttemptLogs -Page $Page -PageSize $PageSize -Technologies $Technologies -AssetName $AssetName -Username $Username -Statuses $Statuses -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -SortBy $SortBy -SortOrder $SortOrder -Sources $Sources -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Get-ListCredentialAttemptLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| Page number | [optional] [default to 1]
 **PageSize** | **Decimal**| Number of items per page | [optional] [default to 10]
 **Technologies** | [**String[]**](String.md)| Filter by technologies | [optional] 
 **AssetName** | **String**| Filter by asset name (supports partial matching) | [optional] 
 **Username** | **String**| Filter by username (supports partial matching) | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter by statuses | [optional] 
 **CreatedFrom** | **String**| Filter credential attempt logs created after a given date and time. | [optional] 
 **CreatedTo** | **String**| Filter credential attempt logs created before a given date and time. | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;attempted_at&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]
 **Sources** | [**String[]**](String.md)| Filter by sources | [optional] 
 **BusinessUnitIds** | [**Decimal[]**](Decimal.md)| Filter by business unit IDs (for users with business unit restrictions) | [optional] 

### Return type

[**PaginatedClientCredentialsLog**](PaginatedClientCredentialsLog.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

