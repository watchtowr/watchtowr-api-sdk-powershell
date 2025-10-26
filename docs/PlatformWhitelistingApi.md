# WatchtowrAPI.WatchtowrAPI\Api.PlatformWhitelistingApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PlatformApiWhitelistIp**](PlatformWhitelistingApi.md#New-PlatformApiWhitelistIp) | **POST** /api/client/platform/whitelisting/api | Add API Whitelisted IP
[**New-PlatformDashboardWhitelistIp**](PlatformWhitelistingApi.md#New-PlatformDashboardWhitelistIp) | **POST** /api/client/platform/whitelisting/dashboard | Add Dashboard Whitelisted IP
[**Invoke-DeletePlatformApiWhitelistIp**](PlatformWhitelistingApi.md#Invoke-DeletePlatformApiWhitelistIp) | **DELETE** /api/client/platform/whitelisting/api/{id} | Remove API Whitelisted IP
[**Invoke-DeletePlatformDashboardWhitelistIp**](PlatformWhitelistingApi.md#Invoke-DeletePlatformDashboardWhitelistIp) | **DELETE** /api/client/platform/whitelisting/dashboard/{id} | Remove Dashboard Whitelisted IP
[**Get-PlatformApiWhitelistIps**](PlatformWhitelistingApi.md#Get-PlatformApiWhitelistIps) | **GET** /api/client/platform/whitelisting/api | List API Whitelisted IPs
[**Get-PlatformApiWhitelistStatus**](PlatformWhitelistingApi.md#Get-PlatformApiWhitelistStatus) | **GET** /api/client/platform/whitelisting/api/status | Get API Whitelisting Status
[**Get-PlatformDashboardWhitelistIps**](PlatformWhitelistingApi.md#Get-PlatformDashboardWhitelistIps) | **GET** /api/client/platform/whitelisting/dashboard | List Dashboard Whitelisted IPs
[**Get-PlatformDashboardWhitelistStatus**](PlatformWhitelistingApi.md#Get-PlatformDashboardWhitelistStatus) | **GET** /api/client/platform/whitelisting/dashboard/status | Get Dashboard Whitelisting Status
[**Update-PlatformApiWhitelistIp**](PlatformWhitelistingApi.md#Update-PlatformApiWhitelistIp) | **PUT** /api/client/platform/whitelisting/api/{id} | Update API Whitelisted IP
[**Update-PlatformApiWhitelistStatus**](PlatformWhitelistingApi.md#Update-PlatformApiWhitelistStatus) | **PUT** /api/client/platform/whitelisting/api/status | Update API Whitelisting Status
[**Update-PlatformDashboardWhitelistIp**](PlatformWhitelistingApi.md#Update-PlatformDashboardWhitelistIp) | **PUT** /api/client/platform/whitelisting/dashboard/{id} | Update Dashboard Whitelisted IP
[**Update-PlatformDashboardWhitelistStatus**](PlatformWhitelistingApi.md#Update-PlatformDashboardWhitelistStatus) | **PUT** /api/client/platform/whitelisting/dashboard/status | Update Dashboard Whitelisting Status


<a id="New-PlatformApiWhitelistIp"></a>
# **New-PlatformApiWhitelistIp**
> WhitelistIpDataSingle New-PlatformApiWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateOrganisationWhitelistIpDto] <PSCustomObject><br>

Add API Whitelisted IP

Add a new IP address to the API whitelist. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CreateOrganisationWhitelistIpDto = Initialize-CreateOrganisationWhitelistIpDto -Ip "192.168.1.1" -Description "Office network" # CreateOrganisationWhitelistIpDto | 

# Add API Whitelisted IP
try {
    $Result = New-PlatformApiWhitelistIp -CreateOrganisationWhitelistIpDto $CreateOrganisationWhitelistIpDto
} catch {
    Write-Host ("Exception occurred when calling New-PlatformApiWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateOrganisationWhitelistIpDto** | [**CreateOrganisationWhitelistIpDto**](CreateOrganisationWhitelistIpDto.md)|  | 

### Return type

[**WhitelistIpDataSingle**](WhitelistIpDataSingle.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-PlatformDashboardWhitelistIp"></a>
# **New-PlatformDashboardWhitelistIp**
> WhitelistIpDataSingle New-PlatformDashboardWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateOrganisationWhitelistIpDto] <PSCustomObject><br>

Add Dashboard Whitelisted IP

Add a new IP address to the dashboard whitelist. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CreateOrganisationWhitelistIpDto = Initialize-CreateOrganisationWhitelistIpDto -Ip "192.168.1.1" -Description "Office network" # CreateOrganisationWhitelistIpDto | 

# Add Dashboard Whitelisted IP
try {
    $Result = New-PlatformDashboardWhitelistIp -CreateOrganisationWhitelistIpDto $CreateOrganisationWhitelistIpDto
} catch {
    Write-Host ("Exception occurred when calling New-PlatformDashboardWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateOrganisationWhitelistIpDto** | [**CreateOrganisationWhitelistIpDto**](CreateOrganisationWhitelistIpDto.md)|  | 

### Return type

[**WhitelistIpDataSingle**](WhitelistIpDataSingle.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeletePlatformApiWhitelistIp"></a>
# **Invoke-DeletePlatformApiWhitelistIp**
> DeleteWhitelistIpData Invoke-DeletePlatformApiWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Remove API Whitelisted IP

Remove an IP address from the API whitelist. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 

# Remove API Whitelisted IP
try {
    $Result = Invoke-DeletePlatformApiWhitelistIp -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePlatformApiWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 

### Return type

[**DeleteWhitelistIpData**](DeleteWhitelistIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeletePlatformDashboardWhitelistIp"></a>
# **Invoke-DeletePlatformDashboardWhitelistIp**
> DeleteWhitelistIpData Invoke-DeletePlatformDashboardWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Remove Dashboard Whitelisted IP

Remove an IP address from the dashboard whitelist. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 

# Remove Dashboard Whitelisted IP
try {
    $Result = Invoke-DeletePlatformDashboardWhitelistIp -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePlatformDashboardWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 

### Return type

[**DeleteWhitelistIpData**](DeleteWhitelistIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PlatformApiWhitelistIps"></a>
# **Get-PlatformApiWhitelistIps**
> WhitelistIpListData Get-PlatformApiWhitelistIps<br>

List API Whitelisted IPs

Get all IP addresses whitelisted for API access. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# List API Whitelisted IPs
try {
    $Result = Get-PlatformApiWhitelistIps
} catch {
    Write-Host ("Exception occurred when calling Get-PlatformApiWhitelistIps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhitelistIpListData**](WhitelistIpListData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PlatformApiWhitelistStatus"></a>
# **Get-PlatformApiWhitelistStatus**
> WhitelistStatusData Get-PlatformApiWhitelistStatus<br>

Get API Whitelisting Status

Get the current status of API IP whitelisting. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get API Whitelisting Status
try {
    $Result = Get-PlatformApiWhitelistStatus
} catch {
    Write-Host ("Exception occurred when calling Get-PlatformApiWhitelistStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhitelistStatusData**](WhitelistStatusData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PlatformDashboardWhitelistIps"></a>
# **Get-PlatformDashboardWhitelistIps**
> WhitelistIpListData Get-PlatformDashboardWhitelistIps<br>

List Dashboard Whitelisted IPs

Get all IP addresses whitelisted for dashboard access. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# List Dashboard Whitelisted IPs
try {
    $Result = Get-PlatformDashboardWhitelistIps
} catch {
    Write-Host ("Exception occurred when calling Get-PlatformDashboardWhitelistIps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhitelistIpListData**](WhitelistIpListData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PlatformDashboardWhitelistStatus"></a>
# **Get-PlatformDashboardWhitelistStatus**
> WhitelistStatusData Get-PlatformDashboardWhitelistStatus<br>

Get Dashboard Whitelisting Status

Get the current status of dashboard IP whitelisting. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Dashboard Whitelisting Status
try {
    $Result = Get-PlatformDashboardWhitelistStatus
} catch {
    Write-Host ("Exception occurred when calling Get-PlatformDashboardWhitelistStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhitelistStatusData**](WhitelistStatusData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PlatformApiWhitelistIp"></a>
# **Update-PlatformApiWhitelistIp**
> WhitelistIpDataSingle Update-PlatformApiWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateOrganisationWhitelistIpDto] <PSCustomObject><br>

Update API Whitelisted IP

Update an existing API whitelisted IP address. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 
$UpdateOrganisationWhitelistIpDto = Initialize-UpdateOrganisationWhitelistIpDto -Id 1 -Ip "192.168.1.1" -Description "Office network" # UpdateOrganisationWhitelistIpDto | 

# Update API Whitelisted IP
try {
    $Result = Update-PlatformApiWhitelistIp -Id $Id -UpdateOrganisationWhitelistIpDto $UpdateOrganisationWhitelistIpDto
} catch {
    Write-Host ("Exception occurred when calling Update-PlatformApiWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 
 **UpdateOrganisationWhitelistIpDto** | [**UpdateOrganisationWhitelistIpDto**](UpdateOrganisationWhitelistIpDto.md)|  | 

### Return type

[**WhitelistIpDataSingle**](WhitelistIpDataSingle.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PlatformApiWhitelistStatus"></a>
# **Update-PlatformApiWhitelistStatus**
> WhitelistStatusData Update-PlatformApiWhitelistStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WhitelistStatusDto] <PSCustomObject><br>

Update API Whitelisting Status

Enable or disable API IP whitelisting. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$WhitelistStatusDto = Initialize-WhitelistStatusDto -Enabled $true # WhitelistStatusDto | 

# Update API Whitelisting Status
try {
    $Result = Update-PlatformApiWhitelistStatus -WhitelistStatusDto $WhitelistStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-PlatformApiWhitelistStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WhitelistStatusDto** | [**WhitelistStatusDto**](WhitelistStatusDto.md)|  | 

### Return type

[**WhitelistStatusData**](WhitelistStatusData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PlatformDashboardWhitelistIp"></a>
# **Update-PlatformDashboardWhitelistIp**
> WhitelistIpDataSingle Update-PlatformDashboardWhitelistIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateOrganisationWhitelistIpDto] <PSCustomObject><br>

Update Dashboard Whitelisted IP

Update an existing dashboard whitelisted IP address. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 
$UpdateOrganisationWhitelistIpDto = Initialize-UpdateOrganisationWhitelistIpDto -Id 1 -Ip "192.168.1.1" -Description "Office network" # UpdateOrganisationWhitelistIpDto | 

# Update Dashboard Whitelisted IP
try {
    $Result = Update-PlatformDashboardWhitelistIp -Id $Id -UpdateOrganisationWhitelistIpDto $UpdateOrganisationWhitelistIpDto
} catch {
    Write-Host ("Exception occurred when calling Update-PlatformDashboardWhitelistIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 
 **UpdateOrganisationWhitelistIpDto** | [**UpdateOrganisationWhitelistIpDto**](UpdateOrganisationWhitelistIpDto.md)|  | 

### Return type

[**WhitelistIpDataSingle**](WhitelistIpDataSingle.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PlatformDashboardWhitelistStatus"></a>
# **Update-PlatformDashboardWhitelistStatus**
> WhitelistStatusData Update-PlatformDashboardWhitelistStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WhitelistStatusDto] <PSCustomObject><br>

Update Dashboard Whitelisting Status

Enable or disable dashboard IP whitelisting. Admin role required.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$WhitelistStatusDto = Initialize-WhitelistStatusDto -Enabled $true # WhitelistStatusDto | 

# Update Dashboard Whitelisting Status
try {
    $Result = Update-PlatformDashboardWhitelistStatus -WhitelistStatusDto $WhitelistStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-PlatformDashboardWhitelistStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WhitelistStatusDto** | [**WhitelistStatusDto**](WhitelistStatusDto.md)|  | 

### Return type

[**WhitelistStatusData**](WhitelistStatusData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

