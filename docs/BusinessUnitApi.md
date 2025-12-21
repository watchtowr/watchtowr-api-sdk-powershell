# WatchtowrAPI.WatchtowrAPI\Api.BusinessUnitApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BusinessUnit**](BusinessUnitApi.md#New-BusinessUnit) | **POST** /api/client/business-unit | Create Business Unit
[**New-BusinessUnitRule**](BusinessUnitApi.md#New-BusinessUnitRule) | **POST** /api/client/business-unit/show/{id}/rule | Create Business Unit Rule
[**Invoke-DeleteBusinessUnit**](BusinessUnitApi.md#Invoke-DeleteBusinessUnit) | **DELETE** /api/client/business-unit/show/{id} | Delete Business Unit
[**Invoke-DeleteBusinessUnitRule**](BusinessUnitApi.md#Invoke-DeleteBusinessUnitRule) | **DELETE** /api/client/business-unit/show/{id}/rule/{ruleId} | Delete Business Unit Rule
[**Get-BusinessUnitDetails**](BusinessUnitApi.md#Get-BusinessUnitDetails) | **GET** /api/client/business-unit/show/{id} | Get Business Unit Details
[**Get-ListBusinessUnit**](BusinessUnitApi.md#Get-ListBusinessUnit) | **GET** /api/client/business-unit/list | List Business Units
[**Update-BusinessUnit**](BusinessUnitApi.md#Update-BusinessUnit) | **PUT** /api/client/business-unit/show/{id} | Update Business Unit


<a id="New-BusinessUnit"></a>
# **New-BusinessUnit**
> ClientBusinessUnitData New-BusinessUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientBusinessUnitDto] <PSCustomObject><br>

Create Business Unit

Create a new business unit with name, description, type, and optional user assignments.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CreateClientBusinessUnitDto = Initialize-CreateClientBusinessUnitDto -Name "Singapore Business Unit" -Description "Singapore based assets" -Type "BRAND" -ParentId 1 -UserIds 0 # CreateClientBusinessUnitDto | 

# Create Business Unit
try {
    $Result = New-BusinessUnit -CreateClientBusinessUnitDto $CreateClientBusinessUnitDto
} catch {
    Write-Host ("Exception occurred when calling New-BusinessUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateClientBusinessUnitDto** | [**CreateClientBusinessUnitDto**](CreateClientBusinessUnitDto.md)|  | 

### Return type

[**ClientBusinessUnitData**](ClientBusinessUnitData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-BusinessUnitRule"></a>
# **New-BusinessUnitRule**
> ClientBusinessUnitRuleData New-BusinessUnitRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateClientBusinessUnitRuleDto] <PSCustomObject><br>

Create Business Unit Rule

Create a new rule for a specific business unit.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the business unit to create a rule for.
$CreateClientBusinessUnitRuleDto = Initialize-CreateClientBusinessUnitRuleDto -Name "Singapore Assets Rule" -Type "keyword" -KeywordMatcher "example.com" -KeywordRuleType "HOSTNAME" -CountryCode "SG" -IntegrationType "aws" -IntegrationId 1 -CascadeSubdomain $true -CascadeIp $true -IncludeAllIntegrations $false # CreateClientBusinessUnitRuleDto | 

# Create Business Unit Rule
try {
    $Result = New-BusinessUnitRule -Id $Id -CreateClientBusinessUnitRuleDto $CreateClientBusinessUnitRuleDto
} catch {
    Write-Host ("Exception occurred when calling New-BusinessUnitRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the business unit to create a rule for. | 
 **CreateClientBusinessUnitRuleDto** | [**CreateClientBusinessUnitRuleDto**](CreateClientBusinessUnitRuleDto.md)|  | 

### Return type

[**ClientBusinessUnitRuleData**](ClientBusinessUnitRuleData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteBusinessUnit"></a>
# **Invoke-DeleteBusinessUnit**
> DeleteClientBusinessUnitResponseDto Invoke-DeleteBusinessUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Delete Business Unit

Delete an existing business unit.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the business unit to delete.

# Delete Business Unit
try {
    $Result = Invoke-DeleteBusinessUnit -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBusinessUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the business unit to delete. | 

### Return type

[**DeleteClientBusinessUnitResponseDto**](DeleteClientBusinessUnitResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteBusinessUnitRule"></a>
# **Invoke-DeleteBusinessUnitRule**
> DeleteClientBusinessUnitRuleResponseDto Invoke-DeleteBusinessUnitRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <Decimal><br>

Delete Business Unit Rule

Delete an existing rule for a specific business unit.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the business unit.
$RuleId = 8.14 # Decimal | The ID of the rule to delete.

# Delete Business Unit Rule
try {
    $Result = Invoke-DeleteBusinessUnitRule -Id $Id -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBusinessUnitRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the business unit. | 
 **RuleId** | **Decimal**| The ID of the rule to delete. | 

### Return type

[**DeleteClientBusinessUnitRuleResponseDto**](DeleteClientBusinessUnitRuleResponseDto.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BusinessUnitDetails"></a>
# **Get-BusinessUnitDetails**
> ClientBusinessUnitDetailWithRulesData Get-BusinessUnitDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulePage] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RulePageSize] <System.Nullable[Decimal]><br>

Get Business Unit Details

Get the details of a specific business unit including paginated rules.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | 
$RulePage = 1 # Decimal | Page number for rules pagination (optional)
$RulePageSize = 10 # Decimal | Page size for rules pagination (optional)

# Get Business Unit Details
try {
    $Result = Get-BusinessUnitDetails -Id $Id -RulePage $RulePage -RulePageSize $RulePageSize
} catch {
    Write-Host ("Exception occurred when calling Get-BusinessUnitDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**|  | 
 **RulePage** | **Decimal**| Page number for rules pagination | [optional] 
 **RulePageSize** | **Decimal**| Page size for rules pagination | [optional] 

### Return type

[**ClientBusinessUnitDetailWithRulesData**](ClientBusinessUnitDetailWithRulesData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListBusinessUnit"></a>
# **Get-ListBusinessUnit**
> PaginatedBusinessUnit Get-ListBusinessUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List Business Units

List all business units available to the current user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter business units created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter business units created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter business units updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter business units updated before a given date and time. (optional)
$Search = "Singapore Business Unit" # String | Search business units by name. (optional)

# List Business Units
try {
    $Result = Get-ListBusinessUnit -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-ListBusinessUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter business units created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter business units created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter business units updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter business units updated before a given date and time. | [optional] 
 **Search** | **String**| Search business units by name. | [optional] 

### Return type

[**PaginatedBusinessUnit**](PaginatedBusinessUnit.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BusinessUnit"></a>
# **Update-BusinessUnit**
> ClientBusinessUnitData Update-BusinessUnit<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateClientBusinessUnitDto] <PSCustomObject><br>

Update Business Unit

Update an existing business unit with name, description, type, parent, and user assignments.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The ID of the business unit to update.
$UpdateClientBusinessUnitDto = Initialize-UpdateClientBusinessUnitDto -Name "Updated Business Unit Name" -Description "Updated description" -Type "BRAND" -ParentId 1 -UserIds 0 # UpdateClientBusinessUnitDto | 

# Update Business Unit
try {
    $Result = Update-BusinessUnit -Id $Id -UpdateClientBusinessUnitDto $UpdateClientBusinessUnitDto
} catch {
    Write-Host ("Exception occurred when calling Update-BusinessUnit: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The ID of the business unit to update. | 
 **UpdateClientBusinessUnitDto** | [**UpdateClientBusinessUnitDto**](UpdateClientBusinessUnitDto.md)|  | 

### Return type

[**ClientBusinessUnitData**](ClientBusinessUnitData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

