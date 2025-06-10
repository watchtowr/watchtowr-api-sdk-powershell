# PSOpenAPITools.PSOpenAPITools\Api.AddAssetApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Submit-Asset**](AddAssetApi.md#Submit-Asset) | **POST** /api/client/seeddata | Submit Seed Data


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
$CreateClientSeedDataRequestBody = Initialize-CreateClientSeedDataRequestBody -VarData $ClientSeedData -BusinessUnits # CreateClientSeedDataRequestBody | 

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

