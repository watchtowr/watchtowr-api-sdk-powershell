# PSOpenAPITools.PSOpenAPITools\Api.ServiceDiscoveryApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListServiceListing**](ServiceDiscoveryApi.md#Get-ListServiceListing) | **GET** /api/client/service-listing/list | List Services


<a id="Get-ListServiceListing"></a>
# **Get-ListServiceListing**
> PaginatedServiceListing Get-ListServiceListing<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeClosedPort] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeNoService] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Countries] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Technology] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ports] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortNumbers] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortTypes] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortServices] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceTypeIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

List Services

List all discovered service assets, ordered by last seen date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$IncludeClosedPort = $true # Boolean | Include listings with closed ports. (optional)
$IncludeNoService = $true # Boolean | Include listings without a service (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter services created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter services created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter services updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter services updated before a given date and time. (optional)
$Search = "1.2.3.4" # String | Search services by IP address. (optional)
$Countries = "US,UK" # String | Filter services by a list of comma separated subject countries that they're related to. (optional)
$Technology = "react" # String | Filter services by technology name. (optional)
$Ports = "22/TCP,443/TCP,3389/UDP" # String | Filter services by a list of comma separated port/protocols. (optional)
$PortNumbers = "80,443" # String | Filter services by a list of comma separated ports. (optional)
$PortTypes = "TCP,UDP" # String | Filter services by a list of comma separated transport layer protocols (e.g. UDP/TCP). (optional)
$PortServices = "SSH,HTTP" # String | Filter services by a list of comma separated services. (optional)
$ServiceTypeIds = "1,2,3" # String | Filter services by a list of comma separated service type IDs. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter services by a list of comma separated business unit IDs they're related to. (optional)
$SortBy = "last_seen" # String | Sort services. (optional)
$OrderBy = "ASC" # String | Order services. (optional)

# List Services
try {
    $Result = Get-ListServiceListing -Page $Page -PageSize $PageSize -IncludeClosedPort $IncludeClosedPort -IncludeNoService $IncludeNoService -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Search $Search -Countries $Countries -Technology $Technology -Ports $Ports -PortNumbers $PortNumbers -PortTypes $PortTypes -PortServices $PortServices -ServiceTypeIds $ServiceTypeIds -BusinessUnitIds $BusinessUnitIds -SortBy $SortBy -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-ListServiceListing: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **IncludeClosedPort** | **Boolean**| Include listings with closed ports. | [optional] 
 **IncludeNoService** | **Boolean**| Include listings without a service | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter services created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter services created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter services updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter services updated before a given date and time. | [optional] 
 **Search** | **String**| Search services by IP address. | [optional] 
 **Countries** | **String**| Filter services by a list of comma separated subject countries that they&#39;re related to. | [optional] 
 **Technology** | **String**| Filter services by technology name. | [optional] 
 **Ports** | **String**| Filter services by a list of comma separated port/protocols. | [optional] 
 **PortNumbers** | **String**| Filter services by a list of comma separated ports. | [optional] 
 **PortTypes** | **String**| Filter services by a list of comma separated transport layer protocols (e.g. UDP/TCP). | [optional] 
 **PortServices** | **String**| Filter services by a list of comma separated services. | [optional] 
 **ServiceTypeIds** | **String**| Filter services by a list of comma separated service type IDs. | [optional] 
 **BusinessUnitIds** | **String**| Filter services by a list of comma separated business unit IDs they&#39;re related to. | [optional] 
 **SortBy** | **String**| Sort services. | [optional] 
 **OrderBy** | **String**| Order services. | [optional] 

### Return type

[**PaginatedServiceListing**](PaginatedServiceListing.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

