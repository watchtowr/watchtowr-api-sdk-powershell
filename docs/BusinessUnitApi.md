# WatchtowrAPI.WatchtowrAPI\Api.BusinessUnitApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BusinessUnitDetails**](BusinessUnitApi.md#Get-BusinessUnitDetails) | **GET** /api/client/business-unit/show/{id} | Get Business Unit Details
[**Get-ListBusinessUnit**](BusinessUnitApi.md#Get-ListBusinessUnit) | **GET** /api/client/business-unit/list | List Business Units


<a id="Get-BusinessUnitDetails"></a>
# **Get-BusinessUnitDetails**
> ClientBusinessUnitData Get-BusinessUnitDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Business Unit Details

Get the details of a specific business unit.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 

# Get Business Unit Details
try {
    $Result = Get-BusinessUnitDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BusinessUnitDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 

### Return type

[**ClientBusinessUnitData**](ClientBusinessUnitData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListBusinessUnit"></a>
# **Get-ListBusinessUnit**
> PaginatedBusinessUnit Get-ListBusinessUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List Business Units

List all business units available to the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter business units created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter business units created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter business units updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter business units updated before a given date and time. (optional)
$Search = "Singapore Business Unit" # String | Search business units by name. (optional)

# List Business Units
try {
    $Result = Get-ListBusinessUnit -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-ListBusinessUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter business units created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter business units created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter business units updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter business units updated before a given date and time. | [optional] 
 **Search** | **String**| Search business units by name. | [optional] 

### Return type

[**PaginatedBusinessUnit**](PaginatedBusinessUnit.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

