# WatchtowrAPI.WatchtowrAPI\Api.SubdomainsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-SubomainToBusinessUnits**](SubdomainsApi.md#Set-SubomainToBusinessUnits) | **POST** /api/client/assets/subdomain/show/{id}/business-units | Assign Subdomain to Business Units
[**New-CustomPropertySubdomain**](SubdomainsApi.md#New-CustomPropertySubdomain) | **POST** /api/client/assets/subdomain/show/{id}/custom-property | Create Subdomain Custom Property
[**New-NoteSubdomain**](SubdomainsApi.md#New-NoteSubdomain) | **POST** /api/client/assets/subdomain/show/{id}/note | Create Subdomain Note
[**Invoke-DeleteCustomPropertySubdomain**](SubdomainsApi.md#Invoke-DeleteCustomPropertySubdomain) | **DELETE** /api/client/assets/subdomain/show/{id}/custom-property/{customPropertyId} | Delete Subdomain Custom Property
[**Invoke-DeleteNoteSubdomain**](SubdomainsApi.md#Invoke-DeleteNoteSubdomain) | **DELETE** /api/client/assets/subdomain/show/{id}/note/{noteId} | Delete Subdomain Note
[**Get-AssetSubdomainDetails**](SubdomainsApi.md#Get-AssetSubdomainDetails) | **GET** /api/client/assets/subdomain/show/{id} | Get Subdomain Details
[**Get-AssetSubdomainDnsRecords**](SubdomainsApi.md#Get-AssetSubdomainDnsRecords) | **GET** /api/client/assets/subdomain/show/{id}/dns-records | List Subdomain DNS Records
[**Get-AssetSubdomainEngineSettings**](SubdomainsApi.md#Get-AssetSubdomainEngineSettings) | **GET** /api/client/assets/subdomain/show/{id}/engine-settings | Get Subdomain Engine Settings
[**Get-CustomPropertiesSubdomain**](SubdomainsApi.md#Get-CustomPropertiesSubdomain) | **GET** /api/client/assets/subdomain/show/{id}/custom-properties | List Subdomain Custom Properties
[**Get-ListAssetSubdomains**](SubdomainsApi.md#Get-ListAssetSubdomains) | **GET** /api/client/assets/subdomain/list | List Subdomains
[**Get-NotesSubdomain**](SubdomainsApi.md#Get-NotesSubdomain) | **GET** /api/client/assets/subdomain/show/{id}/notes | List Subdomain Notes
[**Invoke-UnassignSubomainFromBusinessUnits**](SubdomainsApi.md#Invoke-UnassignSubomainFromBusinessUnits) | **DELETE** /api/client/assets/subdomain/show/{id}/business-units | Unassign Subdomain from Business Units
[**Update-AssetSubdomainEngineSettings**](SubdomainsApi.md#Update-AssetSubdomainEngineSettings) | **PUT** /api/client/assets/subdomain/show/{id}/engine-settings | Update Subdomain Engine Settings
[**Update-AssetSubdomainStatus**](SubdomainsApi.md#Update-AssetSubdomainStatus) | **PUT** /api/client/assets/subdomain/update-status/{id} | Update Subdomain Status
[**Update-CustomPropertySubdomain**](SubdomainsApi.md#Update-CustomPropertySubdomain) | **PUT** /api/client/assets/subdomain/show/{id}/custom-property/{customPropertyId} | Update Subdomain Custom Property
[**Update-NoteSubdomain**](SubdomainsApi.md#Update-NoteSubdomain) | **PUT** /api/client/assets/subdomain/show/{id}/note/{noteId} | Update Subdomain Note


<a id="Set-SubomainToBusinessUnits"></a>
# **Set-SubomainToBusinessUnits**
> ClientSubdomainData Set-SubomainToBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostnameBusinessUnitIDsDTO] <PSCustomObject><br>

Assign Subdomain to Business Units

Assign a specific subdomain asset to a list of business units.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to assign.
$HostnameBusinessUnitIDsDTO = Initialize-HostnameBusinessUnitIDsDTO -BusinessUnitIds "MyBusinessUnitIds" -CascadeSubdomain $false -CascadeIp $false # HostnameBusinessUnitIDsDTO | 

# Assign Subdomain to Business Units
try {
    $Result = Set-SubomainToBusinessUnits -Id $Id -HostnameBusinessUnitIDsDTO $HostnameBusinessUnitIDsDTO
} catch {
    Write-Host ("Exception occurred when calling Set-SubomainToBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to assign. | 
 **HostnameBusinessUnitIDsDTO** | [**HostnameBusinessUnitIDsDTO**](HostnameBusinessUnitIDsDTO.md)|  | 

### Return type

[**ClientSubdomainData**](ClientSubdomainData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CustomPropertySubdomain"></a>
# **New-CustomPropertySubdomain**
> ClientCustomProperty New-CustomPropertySubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Subdomain Custom Property

Create a custom property for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Subdomain Custom Property
try {
    $Result = New-CustomPropertySubdomain -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertySubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NoteSubdomain"></a>
# **New-NoteSubdomain**
> ClientNoteData New-NoteSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Subdomain Note

Create a note for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to create a note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Subdomain Note
try {
    $Result = New-NoteSubdomain -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling New-NoteSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to create a note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertySubdomain"></a>
# **Invoke-DeleteCustomPropertySubdomain**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertySubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Subdomain Custom Property

Delete a custom property for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a subdomain with a custom property to delete.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Subdomain Custom Property
try {
    $Result = Invoke-DeleteCustomPropertySubdomain -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertySubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a subdomain with a custom property to delete. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNoteSubdomain"></a>
# **Invoke-DeleteNoteSubdomain**
> DeleteNoteSucces Invoke-DeleteNoteSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Subdomain Note

Delete a note for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a subdomain with a note to delete.
$NoteId = 8.14 # Decimal | The ID of the note to delete.

# Delete Subdomain Note
try {
    $Result = Invoke-DeleteNoteSubdomain -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNoteSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a subdomain with a note to delete. | 
 **NoteId** | **Decimal**| The ID of the note to delete. | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSubdomainDetails"></a>
# **Get-AssetSubdomainDetails**
> ClientSubdomainData Get-AssetSubdomainDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Subdomain Details

Get the details of a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to retrieve.

# Get Subdomain Details
try {
    $Result = Get-AssetSubdomainDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSubdomainDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to retrieve. | 

### Return type

[**ClientSubdomainData**](ClientSubdomainData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSubdomainDnsRecords"></a>
# **Get-AssetSubdomainDnsRecords**
> ClientDnsRecordListData Get-AssetSubdomainDnsRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Subdomain DNS Records

List DNS records of a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to list DNS records of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Subdomain DNS Records
try {
    $Result = Get-AssetSubdomainDnsRecords -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSubdomainDnsRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to list DNS records of. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**ClientDnsRecordListData**](ClientDnsRecordListData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSubdomainEngineSettings"></a>
# **Get-AssetSubdomainEngineSettings**
> ClientEngineSettingsData Get-AssetSubdomainEngineSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Subdomain Engine Settings

Get the engine settings for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to retrieve engine settings for.

# Get Subdomain Engine Settings
try {
    $Result = Get-AssetSubdomainEngineSettings -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSubdomainEngineSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to retrieve engine settings for. | 

### Return type

[**ClientEngineSettingsData**](ClientEngineSettingsData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CustomPropertiesSubdomain"></a>
# **Get-CustomPropertiesSubdomain**
> PaginatedClientCustomProperty Get-CustomPropertiesSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Subdomain Custom Properties

List the custom properties of a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Subdomain Custom Properties
try {
    $Result = Get-CustomPropertiesSubdomain -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to list custom properties of. | 
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

<a id="Get-ListAssetSubdomains"></a>
# **Get-ListAssetSubdomains**
> PaginatedClientSubdomain Get-ListAssetSubdomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IntegrationConnections] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyValue] <String><br>

List Subdomains

List all discovered subdomain assets, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$AssetName = "blog.watchtowr.com" # String | Search subdomain assets by name. (optional)
$Statuses = "MyStatuses" # String[] | Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack       * parked  (optional)
$Source = "module-adversarysight-tls-ssl-certificate-transparency-discovery" # String | Filter assets by the source that discovered the asset. (optional)
$IntegrationConnections = "123:aws,456:azure,789:googlecloud" # String | Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter assets created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter assets created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter assets updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter assets updated before a given date and time. (optional)
$CustomPropertyKey = "environment" # String | Filter assets by custom property key. (optional)
$CustomPropertyValue = "production" # String | Filter assets by custom property value. Must be used together with customPropertyKey. (optional)

# List Subdomains
try {
    $Result = Get-ListAssetSubdomains -Page $Page -PageSize $PageSize -AssetName $AssetName -Statuses $Statuses -Source $Source -IntegrationConnections $IntegrationConnections -BusinessUnitIds $BusinessUnitIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -CustomPropertyKey $CustomPropertyKey -CustomPropertyValue $CustomPropertyValue
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetSubdomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **AssetName** | **String**| Search subdomain assets by name. | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack       * parked  | [optional] 
 **Source** | **String**| Filter assets by the source that discovered the asset. | [optional] 
 **IntegrationConnections** | **String**| Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter assets created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter assets created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter assets updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter assets updated before a given date and time. | [optional] 
 **CustomPropertyKey** | **String**| Filter assets by custom property key. | [optional] 
 **CustomPropertyValue** | **String**| Filter assets by custom property value. Must be used together with customPropertyKey. | [optional] 

### Return type

[**PaginatedClientSubdomain**](PaginatedClientSubdomain.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-NotesSubdomain"></a>
# **Get-NotesSubdomain**
> ClientNoteListData Get-NotesSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Subdomain Notes

List the notes of a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to list notes of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Subdomain Notes
try {
    $Result = Get-NotesSubdomain -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-NotesSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to list notes of. | 
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

<a id="Invoke-UnassignSubomainFromBusinessUnits"></a>
# **Invoke-UnassignSubomainFromBusinessUnits**
> ClientSubdomainData Invoke-UnassignSubomainFromBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CascadeSubdomain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CascadeIp] <String><br>

Unassign Subdomain from Business Units

Unassign a specific subdomain asset from a list of business units.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to unassign.
$BusinessUnitIds = "MyBusinessUnitIds" # String[] | List of comma-seperated business unit IDs to unassign from the asset.
$CascadeSubdomain = "MyCascadeSubdomain" # String | Cascade business units to domain's subdomains
$CascadeIp = "MyCascadeIp" # String | Cascade business units to domain's ipaddresses

# Unassign Subdomain from Business Units
try {
    $Result = Invoke-UnassignSubomainFromBusinessUnits -Id $Id -BusinessUnitIds $BusinessUnitIds -CascadeSubdomain $CascadeSubdomain -CascadeIp $CascadeIp
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignSubomainFromBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to unassign. | 
 **BusinessUnitIds** | [**String[]**](String.md)| List of comma-seperated business unit IDs to unassign from the asset. | 
 **CascadeSubdomain** | **String**| Cascade business units to domain&#39;s subdomains | 
 **CascadeIp** | **String**| Cascade business units to domain&#39;s ipaddresses | 

### Return type

[**ClientSubdomainData**](ClientSubdomainData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetSubdomainEngineSettings"></a>
# **Update-AssetSubdomainEngineSettings**
> ClientEngineSettingsData Update-AssetSubdomainEngineSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientEngineSettingsDto] <PSCustomObject><br>

Update Subdomain Engine Settings

Update the engine settings for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to update engine settings for.
$UpdateClientEngineSettingsDto = Initialize-UpdateClientEngineSettingsDto -AdversarySightEnabled $true -DnsBruteforcingEnabled $false -AutomatedRedTeamingEnabled $true -CredentialStuffingEnabled $true -RapidReactionEnabled $true # UpdateClientEngineSettingsDto | 

# Update Subdomain Engine Settings
try {
    $Result = Update-AssetSubdomainEngineSettings -Id $Id -UpdateClientEngineSettingsDto $UpdateClientEngineSettingsDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetSubdomainEngineSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to update engine settings for. | 
 **UpdateClientEngineSettingsDto** | [**UpdateClientEngineSettingsDto**](UpdateClientEngineSettingsDto.md)|  | 

### Return type

[**ClientEngineSettingsData**](ClientEngineSettingsData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetSubdomainStatus"></a>
# **Update-AssetSubdomainStatus**
> ClientSubdomainData Update-AssetSubdomainStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientLegacyAssetStatusDto] <PSCustomObject><br>

Update Subdomain Status

Update the status of a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the subdomain to update the status of.
$UpdateClientLegacyAssetStatusDto = Initialize-UpdateClientLegacyAssetStatusDto -Status "verified" -StatusReason "Manually verified via Client API" # UpdateClientLegacyAssetStatusDto | 

# Update Subdomain Status
try {
    $Result = Update-AssetSubdomainStatus -Id $Id -UpdateClientLegacyAssetStatusDto $UpdateClientLegacyAssetStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetSubdomainStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the subdomain to update the status of. | 
 **UpdateClientLegacyAssetStatusDto** | [**UpdateClientLegacyAssetStatusDto**](UpdateClientLegacyAssetStatusDto.md)|  | 

### Return type

[**ClientSubdomainData**](ClientSubdomainData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertySubdomain"></a>
# **Update-CustomPropertySubdomain**
> ClientCustomProperty Update-CustomPropertySubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Subdomain Custom Property

Update a custom property for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a subdomain with a custom property to update.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Subdomain Custom Property
try {
    $Result = Update-CustomPropertySubdomain -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertySubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a subdomain with a custom property to update. | 
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

<a id="Update-NoteSubdomain"></a>
# **Update-NoteSubdomain**
> ClientNoteData Update-NoteSubdomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Subdomain Note

Update a note for a specific subdomain asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a subdomain with a note to update.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Subdomain Note
try {
    $Result = Update-NoteSubdomain -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-NoteSubdomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a subdomain with a note to update. | 
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

