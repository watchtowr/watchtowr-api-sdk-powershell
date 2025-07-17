# UpdateKillSwitchRequestDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Boolean** | Kill switch value (true to enable, false to disable) | 
**Reason** | **String** | Reason for enabling the kill switch (required when enabling) | [optional] 
**RequestSupport** | **Boolean** | Whether to request support from watchTowr (optional, defaults to false) | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateKillSwitchRequestDto = Initialize-PSOpenAPIToolsUpdateKillSwitchRequestDto  -Value true `
 -Reason Emergency response to security incident `
 -RequestSupport false
```

- Convert the resource to JSON
```powershell
$UpdateKillSwitchRequestDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

