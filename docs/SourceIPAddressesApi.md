# PSOpenAPITools.PSOpenAPITools\Api.SourceIPAddressesApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListSourceIpAddresses**](SourceIPAddressesApi.md#Get-ListSourceIpAddresses) | **GET** /api/client/testing-infrastructure | List Testing Infrastructure


<a id="Get-ListSourceIpAddresses"></a>
# **Get-ListSourceIpAddresses**
> ClientSourceIpsAddresses Get-ListSourceIpAddresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Whitelist] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Region] <String><br>

List Testing Infrastructure

List IP addresses and hostnames used by watchTowr for all outbound platform traffic.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Whitelist = $true # Boolean | Filter by whitelist status (true for whitelisted items only) (optional)
$Region = "US" # String | Filter by region (optional)

# List Testing Infrastructure
try {
    $Result = Get-ListSourceIpAddresses -Whitelist $Whitelist -Region $Region
} catch {
    Write-Host ("Exception occurred when calling Get-ListSourceIpAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Whitelist** | **Boolean**| Filter by whitelist status (true for whitelisted items only) | [optional] 
 **Region** | **String**| Filter by region | [optional] 

### Return type

[**ClientSourceIpsAddresses**](ClientSourceIpsAddresses.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

