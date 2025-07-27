# WatchtowrAPI.WatchtowrAPI\Api.HuntsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ClientHunts**](HuntsApi.md#Get-ClientHunts) | **GET** /api/client/hunts/list | List Hunts
[**Get-ListAssetByHunt**](HuntsApi.md#Get-ListAssetByHunt) | **GET** /api/client/hunts/show/{id}/assets | List Assets
[**Get-ListFindingByHunt**](HuntsApi.md#Get-ListFindingByHunt) | **GET** /api/client/hunts/show/{id}/findings | List Hunt Findings
[**Show-TheDetailHunt**](HuntsApi.md#Show-TheDetailHunt) | **GET** /api/client/hunts/show/{id} | Get Hunt Details


<a id="Get-ClientHunts"></a>
# **Get-ClientHunts**
> PaginatedHunts Get-ClientHunts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HuntSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Priorities] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyResolved] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsUnacknowledged] <System.Nullable[Boolean]><br>

List Hunts

List all available hunt assets, ordered by creation date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$Statuses = "received" # String | Filter hunts by hunt status. (optional)
$HuntSearch = "remote%20code%20execution" # String | Search for hunts by text in hunt name. (optional)
$Types = "bespoke" # String | Filter hunts by hunt types. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter hunts created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter hunts created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter hunts updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter hunts updated before a given date and time. (optional)
$Priorities = "low" # String | Filter hunts by hunt priority. (optional)
$ResourceFilter = "hasAssetsOrFindings" # String | General (optional)
$OnlyResolved = $true # Boolean | Filter to only show resolved hunts. (optional)
$IsUnacknowledged = $true # Boolean | Filter to only show hunts that are not acknowledged. (optional)

# List Hunts
try {
    $Result = Get-ClientHunts -Page $Page -PageSize $PageSize -Statuses $Statuses -HuntSearch $HuntSearch -Types $Types -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Priorities $Priorities -ResourceFilter $ResourceFilter -OnlyResolved $OnlyResolved -IsUnacknowledged $IsUnacknowledged
} catch {
    Write-Host ("Exception occurred when calling Get-ClientHunts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **Statuses** | **String**| Filter hunts by hunt status. | [optional] 
 **HuntSearch** | **String**| Search for hunts by text in hunt name. | [optional] 
 **Types** | **String**| Filter hunts by hunt types. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter hunts created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter hunts created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter hunts updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter hunts updated before a given date and time. | [optional] 
 **Priorities** | **String**| Filter hunts by hunt priority. | [optional] 
 **ResourceFilter** | **String**| General | [optional] 
 **OnlyResolved** | **Boolean**| Filter to only show resolved hunts. | [optional] 
 **IsUnacknowledged** | **Boolean**| Filter to only show hunts that are not acknowledged. | [optional] 

### Return type

[**PaginatedHunts**](PaginatedHunts.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListAssetByHunt"></a>
# **Get-ListAssetByHunt**
> AssetsListResponse Get-ListAssetByHunt<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Assets

Get a list of Assets for a specific Hunt.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | Hunt ID of the hunt to retrieve assets from.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Assets
try {
    $Result = Get-ListAssetByHunt -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetByHunt: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| Hunt ID of the hunt to retrieve assets from. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**AssetsListResponse**](AssetsListResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListFindingByHunt"></a>
# **Get-ListFindingByHunt**
> FindingListResponse Get-ListFindingByHunt<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Hunt Findings

List all findings for a specific hunt.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the hunt to retrieve findings from.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Hunt Findings
try {
    $Result = Get-ListFindingByHunt -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-ListFindingByHunt: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the hunt to retrieve findings from. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**FindingListResponse**](FindingListResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Show-TheDetailHunt"></a>
# **Show-TheDetailHunt**
> HuntDetailResponse Show-TheDetailHunt<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Hunt Details

Get the details of a specific hunt.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the hunt to retrieve.

# Get Hunt Details
try {
    $Result = Show-TheDetailHunt -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Show-TheDetailHunt: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the hunt to retrieve. | 

### Return type

[**HuntDetailResponse**](HuntDetailResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

