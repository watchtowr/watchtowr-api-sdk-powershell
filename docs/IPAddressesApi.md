# WatchtowrAPI.WatchtowrAPI\Api.IPAddressesApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-IpToBusinessUnits**](IPAddressesApi.md#Set-IpToBusinessUnits) | **POST** /api/client/assets/ip/show/{id}/business-units | Assign IP to Business Units
[**New-AssetIpNote**](IPAddressesApi.md#New-AssetIpNote) | **POST** /api/client/assets/ip/show/{id}/note | Create Note
[**New-CustomPropertyIp**](IPAddressesApi.md#New-CustomPropertyIp) | **POST** /api/client/assets/ip/show/{id}/custom-property | Create Custom Property
[**Invoke-DeleteAssetIpNote**](IPAddressesApi.md#Invoke-DeleteAssetIpNote) | **DELETE** /api/client/assets/ip/show/{id}/note/{noteId} | Delete Note
[**Invoke-DeleteCustomPropertyIp**](IPAddressesApi.md#Invoke-DeleteCustomPropertyIp) | **DELETE** /api/client/assets/ip/show/{id}/custom-property/{customPropertyId} | Delete Custom Property
[**Get-AssetIpChangelog**](IPAddressesApi.md#Get-AssetIpChangelog) | **GET** /api/client/assets/ip/show/{id}/changelog | Get IP Address Changelog
[**Get-AssetIpDetails**](IPAddressesApi.md#Get-AssetIpDetails) | **GET** /api/client/assets/ip/show/{id} | Get IP Address Details
[**Get-AssetIpDnsRecords**](IPAddressesApi.md#Get-AssetIpDnsRecords) | **GET** /api/client/assets/ip/show/{id}/dns-records | List DNS Records
[**Get-AssetIpEngineSettings**](IPAddressesApi.md#Get-AssetIpEngineSettings) | **GET** /api/client/assets/ip/show/{id}/engine-settings | Get IP Engine Settings
[**Get-AssetIpNotes**](IPAddressesApi.md#Get-AssetIpNotes) | **GET** /api/client/assets/ip/show/{id}/notes | List Notes
[**Get-AssetIpPortDetails**](IPAddressesApi.md#Get-AssetIpPortDetails) | **GET** /api/client/assets/ip/show/{ipId}/port/show/{portId} | Get Port
[**Get-AssetIpPorts**](IPAddressesApi.md#Get-AssetIpPorts) | **GET** /api/client/assets/ip/show/{id}/port/list | List Ports
[**Get-CustomPropertiesIp**](IPAddressesApi.md#Get-CustomPropertiesIp) | **GET** /api/client/assets/ip/show/{id}/custom-properties | List Custom Properties
[**Get-ListAssetIps**](IPAddressesApi.md#Get-ListAssetIps) | **GET** /api/client/assets/ip/list | List IP Addresses
[**Invoke-UnassignIpFromBusinessUnits**](IPAddressesApi.md#Invoke-UnassignIpFromBusinessUnits) | **DELETE** /api/client/assets/ip/show/{id}/business-units | Unassign IP from Business Units
[**Update-AssetIpEngineSettings**](IPAddressesApi.md#Update-AssetIpEngineSettings) | **PUT** /api/client/assets/ip/show/{id}/engine-settings | Update IP Engine Settings
[**Update-AssetIpNote**](IPAddressesApi.md#Update-AssetIpNote) | **PUT** /api/client/assets/ip/show/{id}/note/{noteId} | Update Note
[**Update-AssetIpStatus**](IPAddressesApi.md#Update-AssetIpStatus) | **PUT** /api/client/assets/ip/update-status/{id} | Update Status
[**Update-CustomPropertyIp**](IPAddressesApi.md#Update-CustomPropertyIp) | **PUT** /api/client/assets/ip/show/{id}/custom-property/{customPropertyId} | Update Custom Property


<a id="Set-IpToBusinessUnits"></a>
# **Set-IpToBusinessUnits**
> ClientIpData Set-IpToBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetBusinessUnitIdsDTO] <PSCustomObject><br>

Assign IP to Business Units

Assign a specific IP asset to a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The IP asset's ID.
$AssetBusinessUnitIdsDTO = Initialize-AssetBusinessUnitIdsDTO -BusinessUnitIds "MyBusinessUnitIds" # AssetBusinessUnitIdsDTO | 

# Assign IP to Business Units
try {
    $Result = Set-IpToBusinessUnits -Id $Id -AssetBusinessUnitIdsDTO $AssetBusinessUnitIdsDTO
} catch {
    Write-Host ("Exception occurred when calling Set-IpToBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The IP asset&#39;s ID. | 
 **AssetBusinessUnitIdsDTO** | [**AssetBusinessUnitIdsDTO**](AssetBusinessUnitIdsDTO.md)|  | 

### Return type

[**ClientIpData**](ClientIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-AssetIpNote"></a>
# **New-AssetIpNote**
> ClientNoteData New-AssetIpNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Note

Create a Note for a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP address to create a new note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Note
try {
    $Result = New-AssetIpNote -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling New-AssetIpNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP address to create a new note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CustomPropertyIp"></a>
# **New-CustomPropertyIp**
> ClientCustomProperty New-CustomPropertyIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Custom Property

Create a Custom Property for a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Custom Property
try {
    $Result = New-CustomPropertyIp -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertyIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteAssetIpNote"></a>
# **Invoke-DeleteAssetIpNote**
> DeleteNoteSucces Invoke-DeleteAssetIpNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Note

Delete a Note for a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP address with a note to delete.
$NoteId = 8.14 # Decimal | The ID of the note to delete.

# Delete Note
try {
    $Result = Invoke-DeleteAssetIpNote -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAssetIpNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP address with a note to delete. | 
 **NoteId** | **Decimal**| The ID of the note to delete. | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertyIp"></a>
# **Invoke-DeleteCustomPropertyIp**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertyIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Custom Property

Delete a Custom Property for a specific IP Address asset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP address with a custom property to delete.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Custom Property
try {
    $Result = Invoke-DeleteCustomPropertyIp -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertyIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP address with a custom property to delete. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpChangelog"></a>
# **Get-AssetIpChangelog**
> GetAssetIpChangelog200Response Get-AssetIpChangelog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

Get IP Address Changelog

Get paginated changelog for a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Address to retrieve changelog for.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# Get IP Address Changelog
try {
    $Result = Get-AssetIpChangelog -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpChangelog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Address to retrieve changelog for. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**GetAssetIpChangelog200Response**](GetAssetIpChangelog200Response.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpDetails"></a>
# **Get-AssetIpDetails**
> ClientIpData Get-AssetIpDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get IP Address Details

Get the details of a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to retrieve.

# Get IP Address Details
try {
    $Result = Get-AssetIpDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to retrieve. | 

### Return type

[**ClientIpData**](ClientIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpDnsRecords"></a>
# **Get-AssetIpDnsRecords**
> ClientIpDnsRecordResponse Get-AssetIpDnsRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List DNS Records

List DNS Records of a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to list DNS records of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List DNS Records
try {
    $Result = Get-AssetIpDnsRecords -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpDnsRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to list DNS records of. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**ClientIpDnsRecordResponse**](ClientIpDnsRecordResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpEngineSettings"></a>
# **Get-AssetIpEngineSettings**
> ClientEngineSettingsData Get-AssetIpEngineSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get IP Engine Settings

Get the engine settings for a specific IP asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP to retrieve engine settings for.

# Get IP Engine Settings
try {
    $Result = Get-AssetIpEngineSettings -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpEngineSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP to retrieve engine settings for. | 

### Return type

[**ClientEngineSettingsData**](ClientEngineSettingsData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpNotes"></a>
# **Get-AssetIpNotes**
> ClientNoteListData Get-AssetIpNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Notes

List Notes of a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to list notes of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Notes
try {
    $Result = Get-AssetIpNotes -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to list notes of. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**ClientNoteListData**](ClientNoteListData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpPortDetails"></a>
# **Get-AssetIpPortDetails**
> ClientPortData Get-AssetIpPortDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortId] <String><br>

Get Port

Get the details of a specific Port asset belonging to an IP Address.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IpId = "MyIpId" # String | The asset ID of an IP address with an associated port to get the details of.
$PortId = "MyPortId" # String | The ID of the Port to retrieve details of.

# Get Port
try {
    $Result = Get-AssetIpPortDetails -IpId $IpId -PortId $PortId
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpPortDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IpId** | **String**| The asset ID of an IP address with an associated port to get the details of. | 
 **PortId** | **String**| The ID of the Port to retrieve details of. | 

### Return type

[**ClientPortData**](ClientPortData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpPorts"></a>
# **Get-AssetIpPorts**
> PaginatedClientPort Get-AssetIpPorts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeClosedPort] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeNoService] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>

List Ports

List all discovered Ports belonging to an IP Address, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to list associated ports of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. (optional)
$IncludeClosedPort = $true # Boolean | Include listings with closed ports. (optional)
$IncludeNoService = $true # Boolean | Include listings without a service (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter ports created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter ports created before a given date and time. (optional)

# List Ports
try {
    $Result = Get-AssetIpPorts -Id $Id -Page $Page -PageSize $PageSize -IncludeClosedPort $IncludeClosedPort -IncludeNoService $IncludeNoService -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpPorts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to list associated ports of. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. | [optional] 
 **IncludeClosedPort** | **Boolean**| Include listings with closed ports. | [optional] 
 **IncludeNoService** | **Boolean**| Include listings without a service | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter ports created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter ports created before a given date and time. | [optional] 

### Return type

[**PaginatedClientPort**](PaginatedClientPort.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CustomPropertiesIp"></a>
# **Get-CustomPropertiesIp**
> PaginatedClientCustomProperty Get-CustomPropertiesIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Custom Properties

List the Custom Properties of a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Custom Properties
try {
    $Result = Get-CustomPropertiesIp -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to list custom properties of. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**PaginatedClientCustomProperty**](PaginatedClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListAssetIps"></a>
# **Get-ListAssetIps**
> PaginatedClientIp Get-ListAssetIps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IntegrationConnections] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyValue] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchType] <String><br>

List IP Addresses

List all discovered IP Address assets, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. (optional)
$AssetName = "123.123.123.123" # String | Search IP address by name (full or partial). (optional)
$Statuses = "MyStatuses" # String[] | Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack       * CDN       * hanging cloud ip       * Third Party       * VerifiedHoneypot  (optional)
$Source = "DNS Refresh" # String | Filter assets by the source that discovered the asset. (optional)
$IntegrationConnections = "123:aws,456:azure,789:googlecloud" # String | Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, markmonitor, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter assets created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter assets created before a given date and time. (optional)
$CustomPropertyKey = "environment" # String | Filter assets by custom property key. (optional)
$CustomPropertyValue = "production" # String | Filter assets by custom property value. Must be used together with customPropertyKey. (optional)
$MatchType = "contains" # String | Match assetName searches based on exact names or partial names with contains. Valid match types are:       * contains       * exact  (optional) (default to "contains")

# List IP Addresses
try {
    $Result = Get-ListAssetIps -Page $Page -PageSize $PageSize -AssetName $AssetName -Statuses $Statuses -Source $Source -IntegrationConnections $IntegrationConnections -BusinessUnitIds $BusinessUnitIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -CustomPropertyKey $CustomPropertyKey -CustomPropertyValue $CustomPropertyValue -MatchType $MatchType
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetIps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 100. | [optional] 
 **AssetName** | **String**| Search IP address by name (full or partial). | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack       * CDN       * hanging cloud ip       * Third Party       * VerifiedHoneypot  | [optional] 
 **Source** | **String**| Filter assets by the source that discovered the asset. | [optional] 
 **IntegrationConnections** | **String**| Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, markmonitor, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter assets created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter assets created before a given date and time. | [optional] 
 **CustomPropertyKey** | **String**| Filter assets by custom property key. | [optional] 
 **CustomPropertyValue** | **String**| Filter assets by custom property value. Must be used together with customPropertyKey. | [optional] 
 **MatchType** | **String**| Match assetName searches based on exact names or partial names with contains. Valid match types are:       * contains       * exact  | [optional] [default to &quot;contains&quot;]

### Return type

[**PaginatedClientIp**](PaginatedClientIp.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnassignIpFromBusinessUnits"></a>
# **Invoke-UnassignIpFromBusinessUnits**
> ClientIpData Invoke-UnassignIpFromBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String[]><br>

Unassign IP from Business Units

Unassign a specific IP asset from a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The IP asset's ID.
$BusinessUnitIds = "MyBusinessUnitIds" # String[] | List of comma-seperated business unit IDs to unassign from the asset.

# Unassign IP from Business Units
try {
    $Result = Invoke-UnassignIpFromBusinessUnits -Id $Id -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignIpFromBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The IP asset&#39;s ID. | 
 **BusinessUnitIds** | [**String[]**](String.md)| List of comma-seperated business unit IDs to unassign from the asset. | 

### Return type

[**ClientIpData**](ClientIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetIpEngineSettings"></a>
# **Update-AssetIpEngineSettings**
> ClientEngineSettingsData Update-AssetIpEngineSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientEngineSettingsDto] <PSCustomObject><br>

Update IP Engine Settings

Update the engine settings for a specific IP asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP to update engine settings for.
$UpdateClientEngineSettingsDto = Initialize-UpdateClientEngineSettingsDto -AdversarySightEnabled $true -DnsBruteforcingEnabled $false -AutomatedRedTeamingEnabled $true -IntrusiveHttpChecksEnabled $true -CredentialStuffingEnabled $true -RapidReactionEnabled $true # UpdateClientEngineSettingsDto | 

# Update IP Engine Settings
try {
    $Result = Update-AssetIpEngineSettings -Id $Id -UpdateClientEngineSettingsDto $UpdateClientEngineSettingsDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetIpEngineSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP to update engine settings for. | 
 **UpdateClientEngineSettingsDto** | [**UpdateClientEngineSettingsDto**](UpdateClientEngineSettingsDto.md)|  | 

### Return type

[**ClientEngineSettingsData**](ClientEngineSettingsData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetIpNote"></a>
# **Update-AssetIpNote**
> ClientNoteData Update-AssetIpNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Note

Update a Note for a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP address with a note to update.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Note
try {
    $Result = Update-AssetIpNote -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetIpNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP address with a note to update. | 
 **NoteId** | **Decimal**| The ID of the note to update. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetIpStatus"></a>
# **Update-AssetIpStatus**
> ClientIpData Update-AssetIpStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientLegacyAssetStatusDto] <PSCustomObject><br>

Update Status

Update Status of a specific IP Address asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP address to update the status of.
$UpdateClientLegacyAssetStatusDto = Initialize-UpdateClientLegacyAssetStatusDto -Status "verified" -StatusReason "Manually verified via Client API" # UpdateClientLegacyAssetStatusDto | 

# Update Status
try {
    $Result = Update-AssetIpStatus -Id $Id -UpdateClientLegacyAssetStatusDto $UpdateClientLegacyAssetStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetIpStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP address to update the status of. | 
 **UpdateClientLegacyAssetStatusDto** | [**UpdateClientLegacyAssetStatusDto**](UpdateClientLegacyAssetStatusDto.md)|  | 

### Return type

[**ClientIpData**](ClientIpData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertyIp"></a>
# **Update-CustomPropertyIp**
> ClientCustomProperty Update-CustomPropertyIp<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Custom Property

Update a Custom Property for a specific IP Address asset

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP address with a custom property to update.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Custom Property
try {
    $Result = Update-CustomPropertyIp -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertyIp: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP address with a custom property to update. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to update. | 
 **UpdateClientCustomPropertyDto** | [**UpdateClientCustomPropertyDto**](UpdateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

