# WhitelistStatusData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Current whitelisting status | 

## Examples

- Prepare the resource
```powershell
$WhitelistStatusData = Initialize-WatchtowrAPIWhitelistStatusData  -Enabled true
```

- Convert the resource to JSON
```powershell
$WhitelistStatusData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

