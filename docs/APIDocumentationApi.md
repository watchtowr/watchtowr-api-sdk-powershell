# WatchtowrAPI.WatchtowrAPI\Api.APIDocumentationApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-AssetApiDocumentationNote**](APIDocumentationApi.md#Add-AssetApiDocumentationNote) | **POST** /api/client/assets/apiDocumentation/show/{id}/note | Create Note
[**Set-ApiDocumentationToBusinessUnits**](APIDocumentationApi.md#Set-ApiDocumentationToBusinessUnits) | **POST** /api/client/assets/apiDocumentation/show/{id}/business-units | Assign API Documentation to Business Units
[**New-CustomPropertyApiDocumentation**](APIDocumentationApi.md#New-CustomPropertyApiDocumentation) | **POST** /api/client/assets/apiDocumentation/show/{id}/custom-property | Create Custom Property
[**Invoke-DeleteAssetApiDocumentationNote**](APIDocumentationApi.md#Invoke-DeleteAssetApiDocumentationNote) | **DELETE** /api/client/assets/apiDocumentation/show/{id}/note/{noteId} | Delete Note
[**Invoke-DeleteCustomPropertyApiDocumentation**](APIDocumentationApi.md#Invoke-DeleteCustomPropertyApiDocumentation) | **DELETE** /api/client/assets/apiDocumentation/show/{id}/custom-property/{customPropertyId} | Delete Custom Property
[**Get-AssetApiDocumentationChangelog**](APIDocumentationApi.md#Get-AssetApiDocumentationChangelog) | **GET** /api/client/assets/apiDocumentation/show/{id}/changelog | Get API Documentation Changelog
[**Get-AssetApiDocumentationDetails**](APIDocumentationApi.md#Get-AssetApiDocumentationDetails) | **GET** /api/client/assets/apiDocumentation/show/{id} | Get API Documentation Details
[**Get-AssetApiDocumentationNotes**](APIDocumentationApi.md#Get-AssetApiDocumentationNotes) | **GET** /api/client/assets/apiDocumentation/show/{id}/notes | List API Documentation Notes
[**Get-CustomPropertiesApiDocumentation**](APIDocumentationApi.md#Get-CustomPropertiesApiDocumentation) | **GET** /api/client/assets/apiDocumentation/show/{id}/custom-properties | List Custom Properties
[**Get-ListAssetApiDocumentation**](APIDocumentationApi.md#Get-ListAssetApiDocumentation) | **GET** /api/client/assets/apiDocumentation/list | List API Documentation
[**Invoke-UnassignApiDocumentationFromBusinessUnits**](APIDocumentationApi.md#Invoke-UnassignApiDocumentationFromBusinessUnits) | **DELETE** /api/client/assets/apiDocumentation/show/{id}/business-units | Unassign API Documentation from Business Units
[**Update-AssetApiDocumentationNote**](APIDocumentationApi.md#Update-AssetApiDocumentationNote) | **PUT** /api/client/assets/apiDocumentation/show/{id}/note/{noteId} | Update Note
[**Update-AssetApiDocumentationStatus**](APIDocumentationApi.md#Update-AssetApiDocumentationStatus) | **PUT** /api/client/assets/apiDocumentation/update-status/{id} | Update API Documentation Status
[**Update-CustomPropertyApiDocumentation**](APIDocumentationApi.md#Update-CustomPropertyApiDocumentation) | **PUT** /api/client/assets/apiDocumentation/show/{id}/custom-property/{customPropertyId} | Update Custom Property


<a id="Add-AssetApiDocumentationNote"></a>
# **Add-AssetApiDocumentationNote**
> ClientNoteData Add-AssetApiDocumentationNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Note

Create a Note for a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API Documentation asset to create a new note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Note
try {
    $Result = Add-AssetApiDocumentationNote -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Add-AssetApiDocumentationNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API Documentation asset to create a new note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-ApiDocumentationToBusinessUnits"></a>
# **Set-ApiDocumentationToBusinessUnits**
> ClientApiDocumentation Set-ApiDocumentationToBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetBusinessUnitIdsDTO] <PSCustomObject><br>

Assign API Documentation to Business Units

Assign a specific API Documentation asset to a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The API Documentation asset's ID.
$AssetBusinessUnitIdsDTO = Initialize-AssetBusinessUnitIdsDTO -BusinessUnitIds "MyBusinessUnitIds" # AssetBusinessUnitIdsDTO | 

# Assign API Documentation to Business Units
try {
    $Result = Set-ApiDocumentationToBusinessUnits -Id $Id -AssetBusinessUnitIdsDTO $AssetBusinessUnitIdsDTO
} catch {
    Write-Host ("Exception occurred when calling Set-ApiDocumentationToBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The API Documentation asset&#39;s ID. | 
 **AssetBusinessUnitIdsDTO** | [**AssetBusinessUnitIdsDTO**](AssetBusinessUnitIdsDTO.md)|  | 

### Return type

[**ClientApiDocumentation**](ClientApiDocumentation.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CustomPropertyApiDocumentation"></a>
# **New-CustomPropertyApiDocumentation**
> ClientCustomProperty New-CustomPropertyApiDocumentation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Custom Property

Create Custom Property for a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API Documentation asset to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Custom Property
try {
    $Result = New-CustomPropertyApiDocumentation -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertyApiDocumentation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API Documentation asset to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteAssetApiDocumentationNote"></a>
# **Invoke-DeleteAssetApiDocumentationNote**
> DeleteNoteSucces Invoke-DeleteAssetApiDocumentationNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Note

Delete a Note of a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an API Documentation asset with a note to delete.
$NoteId = 8.14 # Decimal | The ID of the note to delete.

# Delete Note
try {
    $Result = Invoke-DeleteAssetApiDocumentationNote -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAssetApiDocumentationNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an API Documentation asset with a note to delete. | 
 **NoteId** | **Decimal**| The ID of the note to delete. | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertyApiDocumentation"></a>
# **Invoke-DeleteCustomPropertyApiDocumentation**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertyApiDocumentation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Custom Property

Delete Custom Property specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an API Documentation asset with a custom property to delete. 
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Custom Property
try {
    $Result = Invoke-DeleteCustomPropertyApiDocumentation -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertyApiDocumentation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an API Documentation asset with a custom property to delete.  | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetApiDocumentationChangelog"></a>
# **Get-AssetApiDocumentationChangelog**
> PaginatedClientActivityLog Get-AssetApiDocumentationChangelog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

Get API Documentation Changelog

Get paginated changelog (activity logs) for a specific API documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API documentation to retrieve changelog for.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# Get API Documentation Changelog
try {
    $Result = Get-AssetApiDocumentationChangelog -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetApiDocumentationChangelog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API documentation to retrieve changelog for. | 
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 

### Return type

[**PaginatedClientActivityLog**](PaginatedClientActivityLog.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetApiDocumentationDetails"></a>
# **Get-AssetApiDocumentationDetails**
> ClientApiDocumentation Get-AssetApiDocumentationDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get API Documentation Details

Get the details of a specific API documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API documentation asset to retrieve.

# Get API Documentation Details
try {
    $Result = Get-AssetApiDocumentationDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetApiDocumentationDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API documentation asset to retrieve. | 

### Return type

[**ClientApiDocumentation**](ClientApiDocumentation.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetApiDocumentationNotes"></a>
# **Get-AssetApiDocumentationNotes**
> ClientNoteListData Get-AssetApiDocumentationNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List API Documentation Notes

List all notes for a specific API documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API documentation asset to list notes for.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List API Documentation Notes
try {
    $Result = Get-AssetApiDocumentationNotes -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetApiDocumentationNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API documentation asset to list notes for. | 
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

<a id="Get-CustomPropertiesApiDocumentation"></a>
# **Get-CustomPropertiesApiDocumentation**
> PaginatedClientCustomProperty Get-CustomPropertiesApiDocumentation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Custom Properties

List the Custom Properties of a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API Documentation asset to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Custom Properties
try {
    $Result = Get-CustomPropertiesApiDocumentation -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesApiDocumentation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API Documentation asset to list custom properties of. | 
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

<a id="Get-ListAssetApiDocumentation"></a>
# **Get-ListAssetApiDocumentation**
> PaginatedApiDocumentation Get-ListAssetApiDocumentation<br>
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

List API Documentation

List all discovered API documentation assets, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$AssetName = "watchtowr_docs/watchtowr-swagger-hub" # String | Search API documentation by asset name. (optional)
$Statuses = "MyStatuses" # String[] | Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope  (optional)
$Source = "module-adversarysight-api-discovery" # String | Filter assets by the source that discovered the asset. (optional)
$IntegrationConnections = "123:aws,456:azure,789:googlecloud" # String | Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter assets created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter assets created before a given date and time. (optional)
$CustomPropertyKey = "environment" # String | Filter assets by custom property key. (optional)
$CustomPropertyValue = "production" # String | Filter assets by custom property value. Must be used together with customPropertyKey. (optional)

# List API Documentation
try {
    $Result = Get-ListAssetApiDocumentation -Page $Page -PageSize $PageSize -AssetName $AssetName -Statuses $Statuses -Source $Source -IntegrationConnections $IntegrationConnections -BusinessUnitIds $BusinessUnitIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -CustomPropertyKey $CustomPropertyKey -CustomPropertyValue $CustomPropertyValue
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetApiDocumentation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **AssetName** | **String**| Search API documentation by asset name. | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * tracked       * incorrect identification       * pending       * verifiedOutOfScope  | [optional] 
 **Source** | **String**| Filter assets by the source that discovered the asset. | [optional] 
 **IntegrationConnections** | **String**| Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter assets created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter assets created before a given date and time. | [optional] 
 **CustomPropertyKey** | **String**| Filter assets by custom property key. | [optional] 
 **CustomPropertyValue** | **String**| Filter assets by custom property value. Must be used together with customPropertyKey. | [optional] 

### Return type

[**PaginatedApiDocumentation**](PaginatedApiDocumentation.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnassignApiDocumentationFromBusinessUnits"></a>
# **Invoke-UnassignApiDocumentationFromBusinessUnits**
> ClientApiDocumentation Invoke-UnassignApiDocumentationFromBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String[]><br>

Unassign API Documentation from Business Units

Unassign a specific API Documentation asset from a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The API Documentation asset's ID.
$BusinessUnitIds = "MyBusinessUnitIds" # String[] | List of comma-seperated business unit IDs to unassign from the asset.

# Unassign API Documentation from Business Units
try {
    $Result = Invoke-UnassignApiDocumentationFromBusinessUnits -Id $Id -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignApiDocumentationFromBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The API Documentation asset&#39;s ID. | 
 **BusinessUnitIds** | [**String[]**](String.md)| List of comma-seperated business unit IDs to unassign from the asset. | 

### Return type

[**ClientApiDocumentation**](ClientApiDocumentation.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetApiDocumentationNote"></a>
# **Update-AssetApiDocumentationNote**
> ClientNoteData Update-AssetApiDocumentationNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Note

Update a Note of a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an API Documentation asset with a note to update.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Note
try {
    $Result = Update-AssetApiDocumentationNote -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetApiDocumentationNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an API Documentation asset with a note to update. | 
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

<a id="Update-AssetApiDocumentationStatus"></a>
# **Update-AssetApiDocumentationStatus**
> ClientApiDocumentation Update-AssetApiDocumentationStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateApiDocumentationStatusDto] <PSCustomObject><br>

Update API Documentation Status

Update the status of a specific API documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the API documentation asset to update.
$UpdateApiDocumentationStatusDto = Initialize-UpdateApiDocumentationStatusDto -Status "verified" -StatusReason "Manually verified via Client API." # UpdateApiDocumentationStatusDto | 

# Update API Documentation Status
try {
    $Result = Update-AssetApiDocumentationStatus -Id $Id -UpdateApiDocumentationStatusDto $UpdateApiDocumentationStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetApiDocumentationStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the API documentation asset to update. | 
 **UpdateApiDocumentationStatusDto** | [**UpdateApiDocumentationStatusDto**](UpdateApiDocumentationStatusDto.md)|  | 

### Return type

[**ClientApiDocumentation**](ClientApiDocumentation.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertyApiDocumentation"></a>
# **Update-CustomPropertyApiDocumentation**
> ClientCustomProperty Update-CustomPropertyApiDocumentation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Custom Property

Update a Custom Property for a specific API Documentation asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an API Documentation asset with a custom property to update.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Custom Property
try {
    $Result = Update-CustomPropertyApiDocumentation -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertyApiDocumentation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an API Documentation asset with a custom property to update. | 
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

