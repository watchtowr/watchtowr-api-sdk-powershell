# WatchtowrAPI.WatchtowrAPI\Api.SecurityPostureDashboardApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-SecurityPostureDashboard**](SecurityPostureDashboardApi.md#Get-SecurityPostureDashboard) | **GET** /api/client/dashboard/security-posture | Get Security Posture Dashboard


<a id="Get-SecurityPostureDashboard"></a>
# **Get-SecurityPostureDashboard**
> SecurityPostureDashboardResponse Get-SecurityPostureDashboard<br>

Get Security Posture Dashboard

Retrieve consolidated security posture dashboard statistics

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Security Posture Dashboard
try {
    $Result = Get-SecurityPostureDashboard
} catch {
    Write-Host ("Exception occurred when calling Get-SecurityPostureDashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecurityPostureDashboardResponse**](SecurityPostureDashboardResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

