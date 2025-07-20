# WatchtowrAPI.WatchtowrAPI\Api.SuspiciousDomainsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListSuspiciousDomain**](SuspiciousDomainsApi.md#Get-ListSuspiciousDomain) | **GET** /api/client/suspicious-domain/list | List Suspicious Domains
[**Get-SuspiciousDomainDetails**](SuspiciousDomainsApi.md#Get-SuspiciousDomainDetails) | **GET** /api/client/suspicious-domain/show/{id} | Get Suspicious Domain Details


<a id="Get-ListSuspiciousDomain"></a>
# **Get-ListSuspiciousDomain**
> PaginatedSuspiciousDomain Get-ListSuspiciousDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DiscoveryReason] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WhoisSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String><br>

List Suspicious Domains

List all discovered suspicious domain assets, ordered by discovery date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter suspicious domains created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter suspicious domains created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter suspicious domains updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter suspicious domains updated before a given date and time. (optional)
$Search = "watchtowr.com" # String | Search suspicious domains by text within the domain. (optional)
$DiscoveryReason = "suspicious-words" # String | Search suspicious domains by discovery reason. (optional)
$WhoisSearch = "Name%20Server:%20malicious.ns.com" # String | Search suspicious domains by contents of Whois data. (optional)
$Statuses = "pending,malicious,legitimate,benign" # String | Filter suspicious domains by a list of comma separated statuses that asset is tagged with. (optional)

# List Suspicious Domains
try {
    $Result = Get-ListSuspiciousDomain -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Search $Search -DiscoveryReason $DiscoveryReason -WhoisSearch $WhoisSearch -Statuses $Statuses
} catch {
    Write-Host ("Exception occurred when calling Get-ListSuspiciousDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter suspicious domains created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter suspicious domains created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter suspicious domains updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter suspicious domains updated before a given date and time. | [optional] 
 **Search** | **String**| Search suspicious domains by text within the domain. | [optional] 
 **DiscoveryReason** | **String**| Search suspicious domains by discovery reason. | [optional] 
 **WhoisSearch** | **String**| Search suspicious domains by contents of Whois data. | [optional] 
 **Statuses** | **String**| Filter suspicious domains by a list of comma separated statuses that asset is tagged with. | [optional] 

### Return type

[**PaginatedSuspiciousDomain**](PaginatedSuspiciousDomain.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SuspiciousDomainDetails"></a>
# **Get-SuspiciousDomainDetails**
> ClientSuspiciousDomainData Get-SuspiciousDomainDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Suspicious Domain Details

Get the details of a specific suspicious domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the suspicious domain to retrieve.

# Get Suspicious Domain Details
try {
    $Result = Get-SuspiciousDomainDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SuspiciousDomainDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the suspicious domain to retrieve. | 

### Return type

[**ClientSuspiciousDomainData**](ClientSuspiciousDomainData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

