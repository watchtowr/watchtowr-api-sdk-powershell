# WatchtowrAPI.WatchtowrAPI\Api.IPRangesApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-IpRangeToBusinessUnits**](IPRangesApi.md#Set-IpRangeToBusinessUnits) | **POST** /api/client/assets/ipRange/show/{id}/business-units | Assign IP Range to Business Units
[**New-CustomPropertyIpRange**](IPRangesApi.md#New-CustomPropertyIpRange) | **POST** /api/client/assets/ipRange/show/{id}/custom-property | Create Custom Property
[**New-NoteIpRange**](IPRangesApi.md#New-NoteIpRange) | **POST** /api/client/assets/ipRange/show/{id}/note | Create Note
[**Invoke-DeleteCustomPropertyIpRange**](IPRangesApi.md#Invoke-DeleteCustomPropertyIpRange) | **DELETE** /api/client/assets/ipRange/show/{id}/custom-property/{customPropertyId} | Delete Custom Property
[**Invoke-DeleteNoteIpRange**](IPRangesApi.md#Invoke-DeleteNoteIpRange) | **DELETE** /api/client/assets/ipRange/show/{id}/note/{noteId} | Delete Note
[**Get-AssetIpRangeNotes**](IPRangesApi.md#Get-AssetIpRangeNotes) | **GET** /api/client/assets/ipRange/show/{id}/notes | List Notes
[**Get-AssetIprangeChangelog**](IPRangesApi.md#Get-AssetIprangeChangelog) | **GET** /api/client/assets/ipRange/show/{id}/changelog | Get IP Range Changelog
[**Get-AssetIprangeDetails**](IPRangesApi.md#Get-AssetIprangeDetails) | **GET** /api/client/assets/ipRange/show/{id} | Get IP Range
[**Get-CustomPropertiesIpRange**](IPRangesApi.md#Get-CustomPropertiesIpRange) | **GET** /api/client/assets/ipRange/show/{id}/custom-properties | List Custom Properties
[**Get-ListAssetIpranges**](IPRangesApi.md#Get-ListAssetIpranges) | **GET** /api/client/assets/ipRange/list | List IP Ranges
[**Invoke-UnassignIpRangeFromBusinessUnits**](IPRangesApi.md#Invoke-UnassignIpRangeFromBusinessUnits) | **DELETE** /api/client/assets/ipRange/show/{id}/business-units | Unassign IP Range from Business Units
[**Update-AssetIpRangeStatus**](IPRangesApi.md#Update-AssetIpRangeStatus) | **PUT** /api/client/assets/ipRange/update-status/{id} | Update Status
[**Update-CustomPropertyIpRange**](IPRangesApi.md#Update-CustomPropertyIpRange) | **PUT** /api/client/assets/ipRange/show/{id}/custom-property/{customPropertyId} | Update Custom Property
[**Update-NoteIpRange**](IPRangesApi.md#Update-NoteIpRange) | **PUT** /api/client/assets/ipRange/show/{id}/note/{noteId} | Update Note


<a id="Set-IpRangeToBusinessUnits"></a>
# **Set-IpRangeToBusinessUnits**
> ClientIpRangeData Set-IpRangeToBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetBusinessUnitIdsDTO] <PSCustomObject><br>

Assign IP Range to Business Units

Assign a specific IP Range asset to a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The IP Range asset's ID.
$AssetBusinessUnitIdsDTO = Initialize-AssetBusinessUnitIdsDTO -BusinessUnitIds "MyBusinessUnitIds" # AssetBusinessUnitIdsDTO | 

# Assign IP Range to Business Units
try {
    $Result = Set-IpRangeToBusinessUnits -Id $Id -AssetBusinessUnitIdsDTO $AssetBusinessUnitIdsDTO
} catch {
    Write-Host ("Exception occurred when calling Set-IpRangeToBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The IP Range asset&#39;s ID. | 
 **AssetBusinessUnitIdsDTO** | [**AssetBusinessUnitIdsDTO**](AssetBusinessUnitIdsDTO.md)|  | 

### Return type

[**ClientIpRangeData**](ClientIpRangeData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CustomPropertyIpRange"></a>
# **New-CustomPropertyIpRange**
> ClientCustomProperty New-CustomPropertyIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Custom Property

Create a Custom Property for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Custom Property
try {
    $Result = New-CustomPropertyIpRange -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertyIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NoteIpRange"></a>
# **New-NoteIpRange**
> ClientNoteData New-NoteIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Note

Create a Note for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to create a new note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Note
try {
    $Result = New-NoteIpRange -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling New-NoteIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to create a new note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertyIpRange"></a>
# **Invoke-DeleteCustomPropertyIpRange**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertyIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Custom Property

Delete a Custom Property for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP Range with a custom property to delete.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Custom Property
try {
    $Result = Invoke-DeleteCustomPropertyIpRange -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertyIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP Range with a custom property to delete. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNoteIpRange"></a>
# **Invoke-DeleteNoteIpRange**
> DeleteNoteSucces Invoke-DeleteNoteIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Note

Delete a Note for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP Range with a note to delete.
$NoteId = 8.14 # Decimal | 

# Delete Note
try {
    $Result = Invoke-DeleteNoteIpRange -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNoteIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP Range with a note to delete. | 
 **NoteId** | **Decimal**|  | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AssetIpRangeNotes"></a>
# **Get-AssetIpRangeNotes**
> ClientNoteListData Get-AssetIpRangeNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Notes

List the Notes of a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to list notes of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Notes
try {
    $Result = Get-AssetIpRangeNotes -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIpRangeNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to list notes of. | 
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

<a id="Get-AssetIprangeChangelog"></a>
# **Get-AssetIprangeChangelog**
> PaginatedClientActivityLog Get-AssetIprangeChangelog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

Get IP Range Changelog

Get paginated changelog (activity logs) for a specific IP range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP range to retrieve changelog for.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# Get IP Range Changelog
try {
    $Result = Get-AssetIprangeChangelog -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIprangeChangelog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP range to retrieve changelog for. | 
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

<a id="Get-AssetIprangeDetails"></a>
# **Get-AssetIprangeDetails**
> ClientIpRangeData Get-AssetIprangeDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get IP Range

Get the details of a specific IP Range.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to get.

# Get IP Range
try {
    $Result = Get-AssetIprangeDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AssetIprangeDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to get. | 

### Return type

[**ClientIpRangeData**](ClientIpRangeData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CustomPropertiesIpRange"></a>
# **Get-CustomPropertiesIpRange**
> PaginatedClientCustomProperty Get-CustomPropertiesIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Custom Properties

List the Custom Properties of a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Custom Properties
try {
    $Result = Get-CustomPropertiesIpRange -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to list custom properties of. | 
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

<a id="Get-ListAssetIpranges"></a>
# **Get-ListAssetIpranges**
> PaginatedClientIpRange Get-ListAssetIpranges<br>
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

List IP Ranges

List all discovered IP Ranges, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$AssetName = "123.123.123.123/24" # String | Search IP Ranges by name (full or partial). (optional)
$Statuses = "MyStatuses" # String[] | Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack  (optional)
$Source = "module-adversarysight-ip-range-company-lookup" # String | Filter assets by the source that discovered the asset. (optional)
$IntegrationConnections = "123:aws,456:azure,789:googlecloud" # String | Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter assets created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter assets created before a given date and time. (optional)
$CustomPropertyKey = "environment" # String | Filter assets by custom property key. (optional)
$CustomPropertyValue = "production" # String | Filter assets by custom property value. Must be used together with customPropertyKey. (optional)

# List IP Ranges
try {
    $Result = Get-ListAssetIpranges -Page $Page -PageSize $PageSize -AssetName $AssetName -Statuses $Statuses -Source $Source -IntegrationConnections $IntegrationConnections -BusinessUnitIds $BusinessUnitIds -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -CustomPropertyKey $CustomPropertyKey -CustomPropertyValue $CustomPropertyValue
} catch {
    Write-Host ("Exception occurred when calling Get-ListAssetIpranges: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **AssetName** | **String**| Search IP Ranges by name (full or partial). | [optional] 
 **Statuses** | [**String[]**](String.md)| Filter assets by one or more comma separated asset statuses. Valid statuses are:       * verified       * incorrect identification       * pending       * verifiedOutOfScope       * verifiedReducedAttack  | [optional] 
 **Source** | **String**| Filter assets by the source that discovered the asset. | [optional] 
 **IntegrationConnections** | **String**| Filter assets by integration connections (comma-separated list of integrationId:integrationType pairs).  Valid integration types: aws, googlecloud, azure, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, fastly, armiscentrix, qualysvmdr, tenablevm, orcasecurity, crowdstrikefalconspotlight, taniumvm, rapid7insightvm  Format: integrationId:integrationType (e.g., 123:aws) Multiple connections: separate with commas (e.g., 123:aws,456:azure,789:googlecloud) | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter assets created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter assets created before a given date and time. | [optional] 
 **CustomPropertyKey** | **String**| Filter assets by custom property key. | [optional] 
 **CustomPropertyValue** | **String**| Filter assets by custom property value. Must be used together with customPropertyKey. | [optional] 

### Return type

[**PaginatedClientIpRange**](PaginatedClientIpRange.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnassignIpRangeFromBusinessUnits"></a>
# **Invoke-UnassignIpRangeFromBusinessUnits**
> ClientIpRangeData Invoke-UnassignIpRangeFromBusinessUnits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String[]><br>

Unassign IP Range from Business Units

Unassign a specific IP Range asset from a list of Business Units

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The IP Range asset's ID.
$BusinessUnitIds = "MyBusinessUnitIds" # String[] | List of comma-seperated business unit IDs to unassign from the asset.

# Unassign IP Range from Business Units
try {
    $Result = Invoke-UnassignIpRangeFromBusinessUnits -Id $Id -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignIpRangeFromBusinessUnits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The IP Range asset&#39;s ID. | 
 **BusinessUnitIds** | [**String[]**](String.md)| List of comma-seperated business unit IDs to unassign from the asset. | 

### Return type

[**ClientIpRangeData**](ClientIpRangeData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AssetIpRangeStatus"></a>
# **Update-AssetIpRangeStatus**
> ClientIpRangeData Update-AssetIpRangeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientLegacyAssetStatusDto] <PSCustomObject><br>

Update Status

Update Status of a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the IP Range to update status of.
$UpdateClientLegacyAssetStatusDto = Initialize-UpdateClientLegacyAssetStatusDto -Status "verified" -StatusReason "Manually verified via Client API" # UpdateClientLegacyAssetStatusDto | 

# Update Status
try {
    $Result = Update-AssetIpRangeStatus -Id $Id -UpdateClientLegacyAssetStatusDto $UpdateClientLegacyAssetStatusDto
} catch {
    Write-Host ("Exception occurred when calling Update-AssetIpRangeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the IP Range to update status of. | 
 **UpdateClientLegacyAssetStatusDto** | [**UpdateClientLegacyAssetStatusDto**](UpdateClientLegacyAssetStatusDto.md)|  | 

### Return type

[**ClientIpRangeData**](ClientIpRangeData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertyIpRange"></a>
# **Update-CustomPropertyIpRange**
> ClientCustomProperty Update-CustomPropertyIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Custom Property

Update a Custom Property for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP Range with a custom property to update.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Custom Property
try {
    $Result = Update-CustomPropertyIpRange -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertyIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP Range with a custom property to update. | 
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

<a id="Update-NoteIpRange"></a>
# **Update-NoteIpRange**
> ClientNoteData Update-NoteIpRange<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Note

Update a Note for a specific IP Range asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of an IP Range with a note to update.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Note
try {
    $Result = Update-NoteIpRange -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-NoteIpRange: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of an IP Range with a note to update. | 
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

