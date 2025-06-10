# UpdateKillSwitchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Updated kill switch status | 
**Message** | **String** | Success message | 

## Examples

- Prepare the resource
```powershell
$UpdateKillSwitchResponse = Initialize-PSOpenAPIToolsUpdateKillSwitchResponse  -Enabled true `
 -Message Kill switch updated successfully
```

- Convert the resource to JSON
```powershell
$UpdateKillSwitchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

