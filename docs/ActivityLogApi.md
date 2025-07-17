# PSOpenAPITools.PSOpenAPITools\Api.ActivityLogApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListActivityLogs**](ActivityLogApi.md#Get-ListActivityLogs) | **GET** /api/client/activity-log/list | List Activity Logs


<a id="Get-ListActivityLogs"></a>
# **Get-ListActivityLogs**
> PaginatedClientActivityLog Get-ListActivityLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserIds] <String><br>

List Activity Logs

List all activity log entries, ordered by creation date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter logs created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter logs created before a given date and time. (optional)
$Types = "UserInvite,UserRoleType,UserLock,ResetUser2FA,SetupSSO,UpdateUserSessionTimeout,SuccessfulLogin,PasswordResetTriggered,UserDelete,UserCreated,UserBusinessUnit,IntegrationSetUp,IntegrationUpdated,IntegrationDeleted,KillSwitch,FindingSetting,TestingInfrastructureUpdate,UpdatePriorityPort,PlatformIpWhitelist,AutomaticRetestsUpdated,ReportGenerated,ReportGenerationRequest,ReportDownloaded,AutomaticOutOfScope,PrismaCloudApigeeAccountRemoved,PrismaCloudAccountNameUpdate,ServiceAccountCreated,ServiceAccountUpdated,ServiceAccountDeleted,ServiceAccountEnabled,ServiceAccountDisabled,ServiceAccountTokenRegenerated" # String | Filter logs by a comma separated list of types. (optional)
$Search = "requested%20to%20generate%20technical%20report" # String | Search logs across various fields such as user, or description. (optional)
$UserIds = "1,2,3" # String | Filter logs by a comma separated list of user IDs. (optional)

# List Activity Logs
try {
    $Result = Get-ListActivityLogs -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -Types $Types -Search $Search -UserIds $UserIds
} catch {
    Write-Host ("Exception occurred when calling Get-ListActivityLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter logs created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter logs created before a given date and time. | [optional] 
 **Types** | **String**| Filter logs by a comma separated list of types. | [optional] 
 **Search** | **String**| Search logs across various fields such as user, or description. | [optional] 
 **UserIds** | **String**| Filter logs by a comma separated list of user IDs. | [optional] 

### Return type

[**PaginatedClientActivityLog**](PaginatedClientActivityLog.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

