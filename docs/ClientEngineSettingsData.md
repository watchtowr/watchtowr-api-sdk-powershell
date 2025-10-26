# ClientEngineSettingsData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientEngineSettingsDetails**](ClientEngineSettingsDetails.md) | Engine settings data | 

## Examples

- Prepare the resource
```powershell
$ClientEngineSettingsData = Initialize-WatchtowrAPIClientEngineSettingsData  -VarData null
```

- Convert the resource to JSON
```powershell
$ClientEngineSettingsData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

