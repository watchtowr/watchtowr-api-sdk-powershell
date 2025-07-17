# KillSwitchForbiddenError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 
**VarError** | **String** | Error code | 
**StatusCode** | **Decimal** | HTTP status code | 

## Examples

- Prepare the resource
```powershell
$KillSwitchForbiddenError = Initialize-WatchtowrAPIKillSwitchForbiddenError  -Message Administrator or User role required to manage kill switch `
 -VarError KILL_SWITCH_FORBIDDEN `
 -StatusCode 403
```

- Convert the resource to JSON
```powershell
$KillSwitchForbiddenError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

