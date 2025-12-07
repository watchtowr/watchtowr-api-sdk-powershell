# WatchtowrAPI.WatchtowrAPI\Api.PortsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AssetPortDetails**](PortsApi.md#Get-AssetPortDetails) | **GET** /api/client/assets/ip/port/show/{id} | Get Port
[**Get-ListAssetPorts**](PortsApi.md#Get-ListAssetPorts) | **GET** /api/client/assets/ip/port/list | List Ports


<a id="Get-AssetPortDetails"></a>
# **Get-AssetPortDetails**
> ClientPortData Get-AssetPortDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Port

Get the details of a specific Port asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a Port to get.

# Get Port
try {
    $Result = Get-AssetPortDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetPortDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a Port to get. | 

### Return type

[**ClientPortData**](ClientPortData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListAssetPorts"></a>
# **Get-ListAssetPorts**
> PaginatedClientPort Get-ListAssetPorts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeClosedPort] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeNoService] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyValue] <String><br>

List Ports

List all discovered Ports for all IP Addresses, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$IncludeClosedPort = $true # Boolean | Include listings with closed ports. (optional)
$IncludeNoService = $true # Boolean | Include listings without a service (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter ports created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter ports created before a given date and time. (optional)
$AssetName = "80" # String | Search ports by port number. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CustomPropertyKey = "environment" # String | Filter assets by custom property key. (optional)
$CustomPropertyValue = "production" # String | Filter assets by custom property value. Must be used together with customPropertyKey. (optional)

# List Ports
try {
    $Result = Get-ListAssetPorts -Page $Page -PageSize $PageSize -IncludeClosedPort $IncludeClosedPort -IncludeNoService $IncludeNoService -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -AssetName $AssetName -BusinessUnitIds $BusinessUnitIds -CustomPropertyKey $CustomPropertyKey -CustomPropertyValue $CustomPropertyValue
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetPorts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **CreatedFrom** | **System.DateTime**| Filter ports created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter ports created before a given date and time. | [optional] 
 **AssetName** | **String**| Search ports by port number. | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CustomPropertyKey** | **String**| Filter assets by custom property key. | [optional] 
 **CustomPropertyValue** | **String**| Filter assets by custom property value. Must be used together with customPropertyKey. | [optional] 

### Return type

[**PaginatedClientPort**](PaginatedClientPort.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

