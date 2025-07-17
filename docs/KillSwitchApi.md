# PSOpenAPITools.PSOpenAPITools\Api.KillSwitchApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-KillSwitchStatus**](KillSwitchApi.md#Get-KillSwitchStatus) | **GET** /api/client/kill-switch | Get Kill Switch Status
[**Update-KillSwitch**](KillSwitchApi.md#Update-KillSwitch) | **PUT** /api/client/kill-switch | Update Kill Switch


<a id="Get-KillSwitchStatus"></a>
# **Get-KillSwitchStatus**
> KillSwitchStatusData Get-KillSwitchStatus<br>

Get Kill Switch Status

Get the current status of the kill switch and whether client control is allowed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Kill Switch Status
try {
    $Result = Get-KillSwitchStatus
} catch {
    Write-Host ("Exception occurred when calling Get-KillSwitchStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KillSwitchStatusData**](KillSwitchStatusData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-KillSwitch"></a>
# **Update-KillSwitch**
> UpdateKillSwitchData Update-KillSwitch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateKillSwitchRequestDto] <PSCustomObject><br>

Update Kill Switch

Enable or disable the kill switch. Administrator or User role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UpdateKillSwitchRequestDto = Initialize-UpdateKillSwitchRequestDto -Value $true -Reason "Emergency response to security incident" -RequestSupport $false # UpdateKillSwitchRequestDto | 

# Update Kill Switch
try {
    $Result = Update-KillSwitch -UpdateKillSwitchRequestDto $UpdateKillSwitchRequestDto
} catch {
    Write-Host ("Exception occurred when calling Update-KillSwitch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateKillSwitchRequestDto** | [**UpdateKillSwitchRequestDto**](UpdateKillSwitchRequestDto.md)|  | 

### Return type

[**UpdateKillSwitchData**](UpdateKillSwitchData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

