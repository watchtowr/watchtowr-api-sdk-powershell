# WatchtowrAPI.WatchtowrAPI\Api.AddAssetApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ListSubmittedAssets**](AddAssetApi.md#Invoke-ListSubmittedAssets) | **GET** /api/client/seeddata/list | List Submitted Assets
[**Submit-Asset**](AddAssetApi.md#Submit-Asset) | **POST** /api/client/seeddata | Submit Seed Data


<a id="Invoke-ListSubmittedAssets"></a>
# **Invoke-ListSubmittedAssets**
> PaginatedClientSeedData Invoke-ListSubmittedAssets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>

List Submitted Assets

List all submitted seed data assets with pagination and filtering support.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 20 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 20. The maximum for pageSize is 100. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter by a list of comma separated business unit IDs that the seed data is related to. (optional)

# List Submitted Assets
try {
    $Result = Invoke-ListSubmittedAssets -Page $Page -PageSize $PageSize -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListSubmittedAssets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 20. The maximum for pageSize is 100. | [optional] 
 **BusinessUnitIds** | **String**| Filter by a list of comma separated business unit IDs that the seed data is related to. | [optional] 

### Return type

[**PaginatedClientSeedData**](PaginatedClientSeedData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-Asset"></a>
# **Submit-Asset**
> ClientSeedDataData Submit-Asset<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientSeedDataRequestBody] <PSCustomObject><br>

Submit Seed Data

Submit one or more seed data assets to your attack surface for review.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ClientSeedData = Initialize-ClientSeedData -Title "Main Website" -Type "subdomain" -Value "www.watchTowr.com"
$FilterByBusinessUnitInput = Initialize-FilterByBusinessUnitInput -Id 1 -Type "BUSINESS_UNIT" -Name "Marketing"
$CreateClientSeedDataRequestBody = Initialize-CreateClientSeedDataRequestBody -VarData $ClientSeedData -BusinessUnits $FilterByBusinessUnitInput # CreateClientSeedDataRequestBody | 

# Submit Seed Data
try {
    $Result = Submit-Asset -CreateClientSeedDataRequestBody $CreateClientSeedDataRequestBody
} catch {
    Write-Host ("Exception occurred when calling Submit-Asset: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateClientSeedDataRequestBody** | [**CreateClientSeedDataRequestBody**](CreateClientSeedDataRequestBody.md)|  | 

### Return type

[**ClientSeedDataData**](ClientSeedDataData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

