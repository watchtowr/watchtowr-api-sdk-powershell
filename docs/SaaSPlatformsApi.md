# WatchtowrAPI.WatchtowrAPI\Api.SaaSPlatformsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-SaasPlatformToBusinessUnits**](SaaSPlatformsApi.md#Set-SaasPlatformToBusinessUnits) | **POST** /api/client/assets/saasPlatform/show/{id}/business-units | Assign SaaS Platform to Business Units
[**New-CustomPropertySaasPlatform**](SaaSPlatformsApi.md#New-CustomPropertySaasPlatform) | **POST** /api/client/assets/saasPlatform/show/{id}/custom-property | Create Custom Property
[**New-NoteSaasPlatform**](SaaSPlatformsApi.md#New-NoteSaasPlatform) | **POST** /api/client/assets/saasPlatform/show/{id}/note | Create Note
[**Invoke-DeleteCustomPropertySaasPlatform**](SaaSPlatformsApi.md#Invoke-DeleteCustomPropertySaasPlatform) | **DELETE** /api/client/assets/saasPlatform/show/{id}/custom-property/{customPropertyId} | Delete Custom Property
[**Invoke-DeleteNoteSaasPlatform**](SaaSPlatformsApi.md#Invoke-DeleteNoteSaasPlatform) | **DELETE** /api/client/assets/saasPlatform/show/{id}/note/{noteId} | Delete Note
[**Get-AssetSaasPlatformDetails**](SaaSPlatformsApi.md#Get-AssetSaasPlatformDetails) | **GET** /api/client/assets/saasPlatform/show/{id} | Get SaaS Platform
[**Get-AssetSaasPlatformNotes**](SaaSPlatformsApi.md#Get-AssetSaasPlatformNotes) | **GET** /api/client/assets/saasPlatform/show/{id}/notes | List Notes
[**Get-CustomPropertiesSaasPlatform**](SaaSPlatformsApi.md#Get-CustomPropertiesSaasPlatform) | **GET** /api/client/assets/saasPlatform/show/{id}/custom-properties | List Custom Properties
[**Get-ListAssetSaasPlatforms**](SaaSPlatformsApi.md#Get-ListAssetSaasPlatforms) | **GET** /api/client/assets/saasPlatform/list | List SaaS Platforms
[**Invoke-UnassignSaasPlatformFromBusinessUnits**](SaaSPlatformsApi.md#Invoke-UnassignSaasPlatformFromBusinessUnits) | **DELETE** /api/client/assets/saasPlatform/show/{id}/business-units | Unassign SaaS Platform from Business Units
[**Update-AssetSaasPlatformStatus**](SaaSPlatformsApi.md#Update-AssetSaasPlatformStatus) | **PUT** /api/client/assets/saasPlatform/update-status/{id} | Update Status
[**Update-CustomPropertySaasPlatform**](SaaSPlatformsApi.md#Update-CustomPropertySaasPlatform) | **PUT** /api/client/assets/saasPlatform/show/{id}/custom-property/{customPropertyId} | Update Custom Property
[**Update-NoteSaasPlatform**](SaaSPlatformsApi.md#Update-NoteSaasPlatform) | **PUT** /api/client/assets/saasPlatform/show/{id}/note/{noteId} | Update Note


<a id="Set-SaasPlatformToBusinessUnits"></a>
# **Set-SaasPlatformToBusinessUnits**
> ClientSaasPlatformData Set-SaasPlatformToBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetBusinessUnitIdsDTO] <PSCustomObject><br>

Assign SaaS Platform to Business Units

Assign a specific SaaS Platform asset to a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The SaaS Platform asset's ID.
$AssetBusinessUnitIdsDTO = Initialize-AssetBusinessUnitIdsDTO -BusinessUnitIds "MyBusinessUnitIds" # AssetBusinessUnitIdsDTO | 

# Assign SaaS Platform to Business Units
try {
    $Result = Set-SaasPlatformToBusinessUnits -Id $Id -AssetBusinessUnitIdsDTO $AssetBusinessUnitIdsDTO
} catch {
    Write-Host ("Exception occurred when calling Set-SaasPlatformToBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The SaaS Platform asset&#39;s ID. | 
 **AssetBusinessUnitIdsDTO** | [**AssetBusinessUnitIdsDTO**](AssetBusinessUnitIdsDTO.md)|  | 

### Return type

[**ClientSaasPlatformData**](ClientSaasPlatformData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CustomPropertySaasPlatform"></a>
# **New-CustomPropertySaasPlatform**
> ClientCustomProperty New-CustomPropertySaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Custom Property

Create a Custom Property for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Custom Property
try {
    $Result = New-CustomPropertySaasPlatform -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertySaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NoteSaasPlatform"></a>
# **New-NoteSaasPlatform**
> ClientNoteData New-NoteSaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Note

Create a Note for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to create a new note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Note
try {
    $Result = New-NoteSaasPlatform -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling New-NoteSaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to create a new note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertySaasPlatform"></a>
# **Invoke-DeleteCustomPropertySaasPlatform**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertySaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Custom Property

Delete a Custom Property for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a SaaS Platform with a custom property to delete.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Custom Property
try {
    $Result = Invoke-DeleteCustomPropertySaasPlatform -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertySaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a SaaS Platform with a custom property to delete. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNoteSaasPlatform"></a>
# **Invoke-DeleteNoteSaasPlatform**
> DeleteNoteSucces Invoke-DeleteNoteSaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Note

Delete a Note for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a SaaS Platform with a note to delete.
$NoteId = 8.14 # Decimal | The ID of the note to delete.

# Delete Note
try {
    $Result = Invoke-DeleteNoteSaasPlatform -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNoteSaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a SaaS Platform with a note to delete. | 
 **NoteId** | **Decimal**| The ID of the note to delete. | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSaasPlatformDetails"></a>
# **Get-AssetSaasPlatformDetails**
> ClientSaasPlatformData Get-AssetSaasPlatformDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get SaaS Platform

Get the details of a specific SaaS Platform.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to get.

# Get SaaS Platform
try {
    $Result = Get-AssetSaasPlatformDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSaasPlatformDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to get. | 

### Return type

[**ClientSaasPlatformData**](ClientSaasPlatformData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetSaasPlatformNotes"></a>
# **Get-AssetSaasPlatformNotes**
> ClientNoteListData Get-AssetSaasPlatformNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Notes

List the Notes of a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to list notes of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Notes
try {
    $Result = Get-AssetSaasPlatformNotes -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetSaasPlatformNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to list notes of. | 
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

<a id="Get-CustomPropertiesSaasPlatform"></a>
# **Get-CustomPropertiesSaasPlatform**
> PaginatedClientCustomProperty Get-CustomPropertiesSaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Custom Properties

List the Custom Properties of a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Custom Properties
try {
    $Result = Get-CustomPropertiesSaasPlatform -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesSaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to list custom properties of. | 
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

<a id="Get-ListAssetSaasPlatforms"></a>
# **Get-ListAssetSaasPlatforms**
> PaginatedClientSaasPlatform Get-ListAssetSaasPlatforms<br>
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

List SaaS Platforms

List all discovered SaaS Platforms, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$AssetName = "example.slack.com" # String | Search SaaS platforms by URL. (optional)
$Statuses = "MyStatuses" # String[] | Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope  (optional)
$Source = "module-adversarysight-postman-workspace-saas-discovery" # String | Filter assets by the source that discovered the asset. (optional)
$IntegrationConnections = "123:aws,456:azure,789:googlecloud" # String | Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).      Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter assets created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter assets created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter assets updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter assets updated before a given date and time. (optional)

# List SaaS Platforms
try {
    $Result = Get-ListAssetSaasPlatforms -Page $Page -PageSize $PageSize -AssetName $AssetName -Statuses $Statuses -Source $Source -IntegrationConnections $IntegrationConnections -BusinessUnitIds $BusinessUnitIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetSaasPlatforms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **AssetName** | **String**| Search SaaS platforms by URL. | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope  | [optional] 
 **Source** | **String**| Filter assets by the source that discovered the asset. | [optional] 
 **IntegrationConnections** | **String**| Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).      Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter assets created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter assets created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter assets updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter assets updated before a given date and time. | [optional] 

### Return type

[**PaginatedClientSaasPlatform**](PaginatedClientSaasPlatform.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnassignSaasPlatformFromBusinessUnits"></a>
# **Invoke-UnassignSaasPlatformFromBusinessUnits**
> ClientSaasPlatformData Invoke-UnassignSaasPlatformFromBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String[]><br>

Unassign SaaS Platform from Business Units

Unassign a specific SaaS Platform asset from a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The SaaS Platform asset's ID.
$BusinessUnitIds = "MyBusinessUnitIds" # String[] | List of comma-seperated business unit IDs to unassign from the asset.

# Unassign SaaS Platform from Business Units
try {
    $Result = Invoke-UnassignSaasPlatformFromBusinessUnits -Id $Id -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignSaasPlatformFromBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The SaaS Platform asset&#39;s ID. | 
 **BusinessUnitIds** | [**String[]**](String.md)| List of comma-seperated business unit IDs to unassign from the asset. | 

### Return type

[**ClientSaasPlatformData**](ClientSaasPlatformData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetSaasPlatformStatus"></a>
# **Update-AssetSaasPlatformStatus**
> ClientSaasPlatformData Update-AssetSaasPlatformStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientNextGenAssetStatusDto] <PSCustomObject><br>

Update Status

Update Status of a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the SaaS Platform to update status of.
$UpdateClientNextGenAssetStatusDto = Initialize-UpdateClientNextGenAssetStatusDto -Status "verified" -StatusReason "Manually verified via Client API" # UpdateClientNextGenAssetStatusDto | 

# Update Status
try {
    $Result = Update-AssetSaasPlatformStatus -Id $Id -UpdateClientNextGenAssetStatusDto $UpdateClientNextGenAssetStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetSaasPlatformStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the SaaS Platform to update status of. | 
 **UpdateClientNextGenAssetStatusDto** | [**UpdateClientNextGenAssetStatusDto**](UpdateClientNextGenAssetStatusDto.md)|  | 

### Return type

[**ClientSaasPlatformData**](ClientSaasPlatformData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertySaasPlatform"></a>
# **Update-CustomPropertySaasPlatform**
> ClientCustomProperty Update-CustomPropertySaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Custom Property

Update a Custom Property for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a SaaS Platform with a custom property to update.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Custom Property
try {
    $Result = Update-CustomPropertySaasPlatform -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertySaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a SaaS Platform with a custom property to update. | 
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

<a id="Update-NoteSaasPlatform"></a>
# **Update-NoteSaasPlatform**
> ClientNoteData Update-NoteSaasPlatform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Note

Update a Note for a specific SaaS Platform asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of a SaaS Platform with a note to update.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Note
try {
    $Result = Update-NoteSaasPlatform -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-NoteSaasPlatform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of a SaaS Platform with a note to update. | 
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

