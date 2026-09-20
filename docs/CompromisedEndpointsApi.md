# WatchtowrAPI.WatchtowrAPI\Api.CompromisedEndpointsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListCompromisedEndpointHarvestedCredentials**](CompromisedEndpointsApi.md#Get-ListCompromisedEndpointHarvestedCredentials) | **GET** /api/client/compromised-endpoints/show/{id}/harvested-credentials | List Harvested Credentials
[**Get-ListCompromisedEndpoints**](CompromisedEndpointsApi.md#Get-ListCompromisedEndpoints) | **GET** /api/client/compromised-endpoints/list | List Compromised Endpoints


<a id="Get-ListCompromisedEndpointHarvestedCredentials"></a>
# **Get-ListCompromisedEndpointHarvestedCredentials**
> PaginatedClientCompromisedEndpointHarvestedCredentials Get-ListCompromisedEndpointHarvestedCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Usernames] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List Harvested Credentials

List paginated harvested credentials for a specified compromised endpoint.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | Compromised endpoint ID
$Page = 8.14 # Decimal | Page number (optional) (default to 1)
$PageSize = 8.14 # Decimal | Number of items per page (optional) (default to 10)
$Query = "MyQuery" # String | Filter by username or URL (partial matching) (optional)
$Usernames = "MyUsernames" # String[] | Filter by usernames (optional)
$SortBy = "username" # String | Sort by field (optional) (default to "username")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")

# List Harvested Credentials
try {
    $Result = Get-ListCompromisedEndpointHarvestedCredentials -Id $Id -Page $Page -PageSize $PageSize -Query $Query -Usernames $Usernames -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Get-ListCompromisedEndpointHarvestedCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| Compromised endpoint ID | 
 **Page** | **Decimal**| Page number | [optional] [default to 1]
 **PageSize** | **Decimal**| Number of items per page | [optional] [default to 10]
 **Query** | **String**| Filter by username or URL (partial matching) | [optional] 
 **Usernames** | [**String[]**](String.md)| Filter by usernames | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;username&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]

### Return type

[**PaginatedClientCompromisedEndpointHarvestedCredentials**](PaginatedClientCompromisedEndpointHarvestedCredentials.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListCompromisedEndpoints"></a>
# **Get-ListCompromisedEndpoints**
> PaginatedClientCompromisedEndpoint Get-ListCompromisedEndpoints<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StealerFamilies] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OperatingSystems] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Countries] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CompromisedFrom] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CompromisedTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List Compromised Endpoints

List all discovered compromised endpoints from data breaches and stealer malware, ordered by date compromised.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 8.14 # Decimal | Page number (optional) (default to 1)
$PageSize = 8.14 # Decimal | Number of items per page (optional) (default to 10)
$Query = "MyQuery" # String | Filter by hostname or IP address (supports partial matching) (optional)
$StealerFamilies = "MyStealerFamilies" # String[] | Filter by stealer families (optional)
$OperatingSystems = "MyOperatingSystems" # String[] | Filter by operating systems (optional)
$Countries = "MyCountries" # String[] | Filter by countries (optional)
$Statuses = "pending" # String[] | Filter by statuses (optional)
$CompromisedFrom = "2022-02-22T22:00:00.000Z" # String | Filter compromised endpoints compromised after a given date and time. (optional)
$CompromisedTo = "2022-02-23T22:00:00.000Z" # String | Filter compromised endpoints compromised before a given date and time. (optional)
$CreatedFrom = "2022-02-22T22:00:00.000Z" # String | Filter compromised endpoints created after a given date and time. (optional)
$CreatedTo = "2022-02-23T22:00:00.000Z" # String | Filter compromised endpoints created before a given date and time. (optional)
$SortBy = "date_compromised" # String | Sort by field (optional) (default to "date_compromised")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")

# List Compromised Endpoints
try {
    $Result = Get-ListCompromisedEndpoints -Page $Page -PageSize $PageSize -Query $Query -StealerFamilies $StealerFamilies -OperatingSystems $OperatingSystems -Countries $Countries -Statuses $Statuses -CompromisedFrom $CompromisedFrom -CompromisedTo $CompromisedTo -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Get-ListCompromisedEndpoints: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| Page number | [optional] [default to 1]
 **PageSize** | **Decimal**| Number of items per page | [optional] [default to 10]
 **Query** | **String**| Filter by hostname or IP address (supports partial matching) | [optional] 
 **StealerFamilies** | [**String[]**](String.md)| Filter by stealer families | [optional] 
 **OperatingSystems** | [**String[]**](String.md)| Filter by operating systems | [optional] 
 **Countries** | [**String[]**](String.md)| Filter by countries | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter by statuses | [optional] 
 **CompromisedFrom** | **String**| Filter compromised endpoints compromised after a given date and time. | [optional] 
 **CompromisedTo** | **String**| Filter compromised endpoints compromised before a given date and time. | [optional] 
 **CreatedFrom** | **String**| Filter compromised endpoints created after a given date and time. | [optional] 
 **CreatedTo** | **String**| Filter compromised endpoints created before a given date and time. | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;date_compromised&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]

### Return type

[**PaginatedClientCompromisedEndpoint**](PaginatedClientCompromisedEndpoint.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

