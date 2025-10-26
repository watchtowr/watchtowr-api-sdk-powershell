# WatchtowrAPI.WatchtowrAPI\Api.FindingsApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CustomPropertyFinding**](FindingsApi.md#New-CustomPropertyFinding) | **POST** /api/client/findings/show/{id}/custom-property | Create Custom Property
[**New-FindingNote**](FindingsApi.md#New-FindingNote) | **POST** /api/client/findings/show/{id}/note | Create Finding Note
[**Invoke-DeleteCustomPropertyFinding**](FindingsApi.md#Invoke-DeleteCustomPropertyFinding) | **DELETE** /api/client/findings/show/{id}/custom-property/{customPropertyId} | Delete Custom Property
[**Invoke-DeleteFindingNote**](FindingsApi.md#Invoke-DeleteFindingNote) | **DELETE** /api/client/findings/show/{id}/note/{noteId} | Delete Finding Note
[**Export-PDFForFinding**](FindingsApi.md#Export-PDFForFinding) | **GET** /api/client/findings/export/{id} | Export Finding PDF
[**Get-AvailableFindingStatuses**](FindingsApi.md#Get-AvailableFindingStatuses) | **GET** /api/client/findings/statuses | List Finding Statuses
[**Get-CustomPropertiesFinding**](FindingsApi.md#Get-CustomPropertiesFinding) | **GET** /api/client/findings/show/{id}/custom-properties | List Custom Properties
[**Get-FindingDetails**](FindingsApi.md#Get-FindingDetails) | **GET** /api/client/findings/show/{id} | Get Finding Details
[**Get-FindingNotes**](FindingsApi.md#Get-FindingNotes) | **GET** /api/client/findings/show/{id}/notes | List Finding Notes
[**Get-ListFindings**](FindingsApi.md#Get-ListFindings) | **GET** /api/client/findings/list | List Findings
[**Start-SpecificFindingRetest**](FindingsApi.md#Start-SpecificFindingRetest) | **POST** /api/client/findings/retest/{finding_id} | Retest Finding
[**Update-CustomPropertyFinding**](FindingsApi.md#Update-CustomPropertyFinding) | **PUT** /api/client/findings/show/{id}/custom-property/{customPropertyId} | Update Custom Property
[**Update-FindingNote**](FindingsApi.md#Update-FindingNote) | **PUT** /api/client/findings/show/{id}/note/{noteId} | Update Finding Note
[**Update-FindingStatus**](FindingsApi.md#Update-FindingStatus) | **POST** /api/client/findings/status/{id} | Update Finding Status


<a id="New-CustomPropertyFinding"></a>
# **New-CustomPropertyFinding**
> ClientCustomProperty New-CustomPropertyFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientCustomPropertyDto] <PSCustomObject><br>

Create Custom Property

Create a Custom Property for a specific Finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to create a new custom property for.
$CreateClientCustomPropertyDto = Initialize-CreateClientCustomPropertyDto -Key "Severity" -Value  -IsPreset $false # CreateClientCustomPropertyDto | 

# Create Custom Property
try {
    $Result = New-CustomPropertyFinding -Id $Id -CreateClientCustomPropertyDto $CreateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomPropertyFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to create a new custom property for. | 
 **CreateClientCustomPropertyDto** | [**CreateClientCustomPropertyDto**](CreateClientCustomPropertyDto.md)|  | 

### Return type

[**ClientCustomProperty**](ClientCustomProperty.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-FindingNote"></a>
# **New-FindingNote**
> ClientNoteData New-FindingNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Create Finding Note

Create a new note for a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to create a note for.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Create Finding Note
try {
    $Result = New-FindingNote -Id $Id -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling New-FindingNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to create a note for. | 
 **CreateClientNoteDto** | [**CreateClientNoteDto**](CreateClientNoteDto.md)|  | 

### Return type

[**ClientNoteData**](ClientNoteData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCustomPropertyFinding"></a>
# **Invoke-DeleteCustomPropertyFinding**
> RemoveClientCustomPropertyResponseDto Invoke-DeleteCustomPropertyFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>

Delete Custom Property

Delete a Custom Property for a specific Finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to delete a custom property of.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to delete.

# Delete Custom Property
try {
    $Result = Invoke-DeleteCustomPropertyFinding -Id $Id -CustomPropertyId $CustomPropertyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCustomPropertyFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to delete a custom property of. | 
 **CustomPropertyId** | **Decimal**| The ID of the custom property to delete. | 

### Return type

[**RemoveClientCustomPropertyResponseDto**](RemoveClientCustomPropertyResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteFindingNote"></a>
# **Invoke-DeleteFindingNote**
> DeleteNoteSucces Invoke-DeleteFindingNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>

Delete Finding Note

Delete a specific note from a finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding that contains the note.
$NoteId = 8.14 # Decimal | The ID of the note to delete.

# Delete Finding Note
try {
    $Result = Invoke-DeleteFindingNote -Id $Id -NoteId $NoteId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFindingNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding that contains the note. | 
 **NoteId** | **Decimal**| The ID of the note to delete. | 

### Return type

[**DeleteNoteSucces**](DeleteNoteSucces.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-PDFForFinding"></a>
# **Export-PDFForFinding**
> void Export-PDFForFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Export Finding PDF

Export a PDF report for a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to export.

# Export Finding PDF
try {
    $Result = Export-PDFForFinding -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Export-PDFForFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to export. | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AvailableFindingStatuses"></a>
# **Get-AvailableFindingStatuses**
> void Get-AvailableFindingStatuses<br>

List Finding Statuses

List all available statuses for findings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# List Finding Statuses
try {
    $Result = Get-AvailableFindingStatuses
} catch {
    Write-Host ("Exception occurred when calling Get-AvailableFindingStatuses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CustomPropertiesFinding"></a>
# **Get-CustomPropertiesFinding**
> PaginatedClientCustomProperty Get-CustomPropertiesFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Custom Properties

List the Custom Properties of a specific Finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to list custom properties of.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Custom Properties
try {
    $Result = Get-CustomPropertiesFinding -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CustomPropertiesFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to list custom properties of. | 
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

<a id="Get-FindingDetails"></a>
# **Get-FindingDetails**
> ClientFindingData Get-FindingDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Finding Details

Get the details of a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to retrieve.

# Get Finding Details
try {
    $Result = Get-FindingDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-FindingDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to retrieve. | 

### Return type

[**ClientFindingData**](ClientFindingData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-FindingNotes"></a>
# **Get-FindingNotes**
> ClientNoteListData Get-FindingNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>

List Finding Notes

List all notes for a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to list notes for.
$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)

# List Finding Notes
try {
    $Result = Get-FindingNotes -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-FindingNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to list notes for. | 
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

<a id="Get-ListFindings"></a>
# **Get-ListFindings**
> PaginatedClientFindings Get-ListFindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FindingImpactThreshold] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FindingTitle] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Severities] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetTitle] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetTypes] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Assignee] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyValidatedExploitable] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyUnacknowledged] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExploitationRiskLevel] <String><br>

List Findings

List all discovered findings, ordered by date identified.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter findings created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter findings created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter findings updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter findings updated before a given date and time. (optional)
$Statuses = "confirmed,unconfirmed,remediated,risk-accepted,closed,asset-no-longer-tracked" # String | Filter findings by a list of comma separated statuses they're tagged with. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter findings by a list of comma separated business unit IDs that they're related to. (optional)
$FindingImpactThreshold = "All" # String | Impact Setting: * High - Prioritised Findings (vulnerabilities, misconfigurations and weaknesses) that could have an immediate, direct impact on your organisation's security posture. * All - All Findings, a broader range of findings that may not directly impact your organisation's security posture, but may represent deviations from best practices. (optional)
$FindingTitle = "Valid%20Credentials%20Discovered" # String | Search findings by title contents. (optional)
$Severities = "critical" # String | Filter findings by a list of comma separated severities they're tagged with. (optional)
$AssetTitle = "www.watchTowr.com" # String | Search by findings by affected asset. (optional)
$AssetTypes = "domain" # String | Filter findings by a comma separated list of affected asset types. (optional)
$Assignee = "John Smith" # String | Filter findings by assignee. To filter findings that don't have an assignee, please use assignee=No Assignee. (optional)
$Tags = "CISA-KEV,Defacement,Credentials" # String | Filter findings by a comma separated list of tags. (optional)
$OnlyValidatedExploitable = $true # Boolean | Filter to only show findings validated as exploitable. (optional)
$OnlyUnacknowledged = $true # Boolean | Filter to only show unacknowledged findings. (optional)
$ExploitationRiskLevel = "Unknown" # String | Filter findings by a comma separated list of exploitation risk levels. (optional)

# List Findings
try {
    $Result = Get-ListFindings -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Statuses $Statuses -BusinessUnitIds $BusinessUnitIds -FindingImpactThreshold $FindingImpactThreshold -FindingTitle $FindingTitle -Severities $Severities -AssetTitle $AssetTitle -AssetTypes $AssetTypes -Assignee $Assignee -Tags $Tags -OnlyValidatedExploitable $OnlyValidatedExploitable -OnlyUnacknowledged $OnlyUnacknowledged -ExploitationRiskLevel $ExploitationRiskLevel
} catch {
    Write-Host ("Exception occurred when calling Get-ListFindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter findings created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter findings created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter findings updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter findings updated before a given date and time. | [optional] 
 **Statuses** | **String**| Filter findings by a list of comma separated statuses they&#39;re tagged with. | [optional] 
 **BusinessUnitIds** | **String**| Filter findings by a list of comma separated business unit IDs that they&#39;re related to. | [optional] 
 **FindingImpactThreshold** | **String**| Impact Setting: * High - Prioritised Findings (vulnerabilities, misconfigurations and weaknesses) that could have an immediate, direct impact on your organisation&#39;s security posture. * All - All Findings, a broader range of findings that may not directly impact your organisation&#39;s security posture, but may represent deviations from best practices. | [optional] 
 **FindingTitle** | **String**| Search findings by title contents. | [optional] 
 **Severities** | **String**| Filter findings by a list of comma separated severities they&#39;re tagged with. | [optional] 
 **AssetTitle** | **String**| Search by findings by affected asset. | [optional] 
 **AssetTypes** | **String**| Filter findings by a comma separated list of affected asset types. | [optional] 
 **Assignee** | **String**| Filter findings by assignee. To filter findings that don&#39;t have an assignee, please use assignee&#x3D;No Assignee. | [optional] 
 **Tags** | **String**| Filter findings by a comma separated list of tags. | [optional] 
 **OnlyValidatedExploitable** | **Boolean**| Filter to only show findings validated as exploitable. | [optional] 
 **OnlyUnacknowledged** | **Boolean**| Filter to only show unacknowledged findings. | [optional] 
 **ExploitationRiskLevel** | **String**| Filter findings by a comma separated list of exploitation risk levels. | [optional] 

### Return type

[**PaginatedClientFindings**](PaginatedClientFindings.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-SpecificFindingRetest"></a>
# **Start-SpecificFindingRetest**
> ClientFinding Start-SpecificFindingRetest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FindingId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeDnsConnected] <System.Nullable[Boolean]><br>

Retest Finding

Initiate a retest for a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FindingId = 8.14 # Decimal | The ID of the finding to retest.
$IncludeDnsConnected = $true # Boolean | Include DNS-connected findings with the same vulnerability type in the retest. When enabled, the system will identify all findings with the same KB entry on assets connected via DNS A records (up to 10 findings total) and retest them together. (optional)

# Retest Finding
try {
    $Result = Start-SpecificFindingRetest -FindingId $FindingId -IncludeDnsConnected $IncludeDnsConnected
} catch {
    Write-Host ("Exception occurred when calling Start-SpecificFindingRetest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FindingId** | **Decimal**| The ID of the finding to retest. | 
 **IncludeDnsConnected** | **Boolean**| Include DNS-connected findings with the same vulnerability type in the retest. When enabled, the system will identify all findings with the same KB entry on assets connected via DNS A records (up to 10 findings total) and retest them together. | [optional] 

### Return type

[**ClientFinding**](ClientFinding.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CustomPropertyFinding"></a>
# **Update-CustomPropertyFinding**
> ClientCustomProperty Update-CustomPropertyFinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPropertyId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientCustomPropertyDto] <PSCustomObject><br>

Update Custom Property

Update a Custom Property for a specific Finding

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to update a custom property of.
$CustomPropertyId = 8.14 # Decimal | The ID of the custom property to update.
$UpdateClientCustomPropertyDto = Initialize-UpdateClientCustomPropertyDto -Key "Severity" -Value "Low" # UpdateClientCustomPropertyDto | 

# Update Custom Property
try {
    $Result = Update-CustomPropertyFinding -Id $Id -CustomPropertyId $CustomPropertyId -UpdateClientCustomPropertyDto $UpdateClientCustomPropertyDto
} catch {
    Write-Host ("Exception occurred when calling Update-CustomPropertyFinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to update a custom property of. | 
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

<a id="Update-FindingNote"></a>
# **Update-FindingNote**
> ClientNoteData Update-FindingNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NoteId] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientNoteDto] <PSCustomObject><br>

Update Finding Note

Update an existing note for a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding that contains the note.
$NoteId = 8.14 # Decimal | The ID of the note to update.
$CreateClientNoteDto = Initialize-CreateClientNoteDto -Note "Passed to the engineering team. Review on 01/07/2024" -Title "Initial Review - 01/01/2024" # CreateClientNoteDto | 

# Update Finding Note
try {
    $Result = Update-FindingNote -Id $Id -NoteId $NoteId -CreateClientNoteDto $CreateClientNoteDto
} catch {
    Write-Host ("Exception occurred when calling Update-FindingNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding that contains the note. | 
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

<a id="Update-FindingStatus"></a>
# **Update-FindingStatus**
> ClientFindingData Update-FindingStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientFindingStatusRequestBody] <PSCustomObject><br>

Update Finding Status

Update the status of a specific finding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the finding to update.
$UpdateClientFindingStatusRequestBody = Initialize-UpdateClientFindingStatusRequestBody -Status "confirmed" # UpdateClientFindingStatusRequestBody | 

# Update Finding Status
try {
    $Result = Update-FindingStatus -Id $Id -UpdateClientFindingStatusRequestBody $UpdateClientFindingStatusRequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-FindingStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the finding to update. | 
 **UpdateClientFindingStatusRequestBody** | [**UpdateClientFindingStatusRequestBody**](UpdateClientFindingStatusRequestBody.md)|  | 

### Return type

[**ClientFindingData**](ClientFindingData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

