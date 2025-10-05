# WatchtowrAPI.WatchtowrAPI\Api.UserManagementApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-UserDetails**](UserManagementApi.md#Get-UserDetails) | **GET** /api/client/users/show/{id} | Get User Details
[**Invoke-ListUsers**](UserManagementApi.md#Invoke-ListUsers) | **GET** /api/client/users/list | List Users


<a id="Get-UserDetails"></a>
# **Get-UserDetails**
> UserDetailData Get-UserDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get User Details

Get detailed information about a specific user. Administrator role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 

# Get User Details
try {
    $Result = Get-UserDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-UserDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 

### Return type

[**UserDetailData**](UserDetailData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListUsers"></a>
# **Invoke-ListUsers**
> PaginatedUsers Invoke-ListUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Title] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIds] <System.Nullable[Decimal][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <String><br>

List Users

Get a paginated list of users with filtering. Administrator role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$Name = "John Doe" # String | Search by user name (optional)
$Title = "Security Manager" # String | Search by user title (optional)
$Status = "Active" # String[] | Filter by user status (optional)
$RoleIds = 0 # Decimal[] | Filter by role IDs (optional)
$CreatedFrom = "2023-01-01T00:00:00Z" # String | Filter by creation date start (optional)
$CreatedTo = "2023-12-31T23:59:59Z" # String | Filter by creation date end (optional)

# List Users
try {
    $Result = Invoke-ListUsers -Page $Page -PageSize $PageSize -Name $Name -Title $Title -Status $Status -RoleIds $RoleIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **Name** | **String**| Search by user name | [optional] 
 **Title** | **String**| Search by user title | [optional] 
 **Status** | [**String[]**](String.md)| Filter by user status | [optional] 
 **RoleIds** | [**Decimal[]**](Decimal.md)| Filter by role IDs | [optional] 
 **CreatedFrom** | **String**| Filter by creation date start | [optional] 
 **CreatedTo** | **String**| Filter by creation date end | [optional] 

### Return type

[**PaginatedUsers**](PaginatedUsers.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

