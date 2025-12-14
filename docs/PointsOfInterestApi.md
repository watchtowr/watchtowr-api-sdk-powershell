# WatchtowrAPI.WatchtowrAPI\Api.PointsOfInterestApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Convert-PoiToFinding**](PointsOfInterestApi.md#Convert-PoiToFinding) | **POST** /api/client/points-of-interest/{id}/convert-to-finding | Convert Point of Interest to Finding
[**Get-ListPointsOfInterest**](PointsOfInterestApi.md#Get-ListPointsOfInterest) | **GET** /api/client/points-of-interest/list | List Points of Interest


<a id="Convert-PoiToFinding"></a>
# **Convert-PoiToFinding**
> PointsOfInterestData Convert-PoiToFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Convert Point of Interest to Finding

Convert a Point of Interest to a finding. The POI must exist and not already have a finding associated with it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the Point of Interest to convert to a finding.

# Convert Point of Interest to Finding
try {
    $Result = Convert-PoiToFinding -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Convert-PoiToFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the Point of Interest to convert to a finding. | 

### Return type

[**PointsOfInterestData**](PointsOfInterestData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListPointsOfInterest"></a>
# **Get-ListPointsOfInterest**
> PaginatedPointOfInterest Get-ListPointsOfInterest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DiscoveredDateOrder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HasFinding] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetStatuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SuppressionFilter] <String><br>

List Points of Interest

List all discovered Points of Interest assets, ordered by discovery date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter points of interest created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter points of interest created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter points of interest updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter points of interest updated before a given date and time. (optional)
$DiscoveredDateOrder = "ASC" # String | Order points of interest by their discovery date. (optional)
$Search = "Apache%20Airflow%20Admin%20Login" # String | Search Points of Interest by name or URL. (optional)
$Types = "admin-panel,open-directory" # String | Filter by a comma separated list of types. (optional)
$HasFinding = $false # Boolean | Filter points of interest that have findings. (optional)
$StartDate = (Get-Date) # System.DateTime | Filter points of interest by start date. (optional)
$EndDate = (Get-Date) # System.DateTime | Filter points of interest by end date. (optional)
$AssetStatuses = "verified,Unregistered,Parked,Incorrect Identification,pending,VerifiedOutOfScope,VerifiedReducedAttack,Tracked,CDN,Hanging Cloud IP,VerifiedHoneypot,Third Party" # String | Filter points of interest by a comma separated list of asset statuses. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter points of interest by a comma separated list of business unit IDs. (optional)
$SuppressionFilter = "non-suppressed" # String | Filter points of interest by suppression status. (optional)

# List Points of Interest
try {
    $Result = Get-ListPointsOfInterest -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -DiscoveredDateOrder $DiscoveredDateOrder -Search $Search -Types $Types -HasFinding $HasFinding -StartDate $StartDate -EndDate $EndDate -AssetStatuses $AssetStatuses -BusinessUnitIds $BusinessUnitIds -SuppressionFilter $SuppressionFilter
} catch {
    Write-Host ("Exception occurred when calling Get-ListPointsOfInterest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter points of interest created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter points of interest created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter points of interest updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter points of interest updated before a given date and time. | [optional] 
 **DiscoveredDateOrder** | **String**| Order points of interest by their discovery date. | [optional] 
 **Search** | **String**| Search Points of Interest by name or URL. | [optional] 
 **Types** | **String**| Filter by a comma separated list of types. | [optional] 
 **HasFinding** | **Boolean**| Filter points of interest that have findings. | [optional] 
 **StartDate** | **System.DateTime**| Filter points of interest by start date. | [optional] 
 **EndDate** | **System.DateTime**| Filter points of interest by end date. | [optional] 
 **AssetStatuses** | **String**| Filter points of interest by a comma separated list of asset statuses. | [optional] 
 **BusinessUnitIds** | **String**| Filter points of interest by a comma separated list of business unit IDs. | [optional] 
 **SuppressionFilter** | **String**| Filter points of interest by suppression status. | [optional] 

### Return type

[**PaginatedPointOfInterest**](PaginatedPointOfInterest.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

