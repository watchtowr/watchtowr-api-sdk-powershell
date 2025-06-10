# KillSwitchStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Current kill switch status | 
**AllowClientControl** | **Boolean** | Whether client kill switch control is allowed | 

## Examples

- Prepare the resource
```powershell
$KillSwitchStatusResponse = Initialize-PSOpenAPIToolsKillSwitchStatusResponse  -Enabled true `
 -AllowClientControl true
```

- Convert the resource to JSON
```powershell
$KillSwitchStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

