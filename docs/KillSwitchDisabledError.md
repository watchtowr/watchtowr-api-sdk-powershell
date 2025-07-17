# KillSwitchDisabledError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Error message | 
**VarError** | **String** | Error code | 
**StatusCode** | **Decimal** | HTTP status code | 

## Examples

- Prepare the resource
```powershell
$KillSwitchDisabledError = Initialize-PSOpenAPIToolsKillSwitchDisabledError  -Message Disabling of kill switch is not allowed. Please contact your watchTowr account manager. `
 -VarError KILL_SWITCH_CONTROL_DISABLED `
 -StatusCode 400
```

- Convert the resource to JSON
```powershell
$KillSwitchDisabledError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

