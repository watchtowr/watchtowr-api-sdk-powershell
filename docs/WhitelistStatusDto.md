# WhitelistStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Enable or disable whitelisting | 

## Examples

- Prepare the resource
```powershell
$WhitelistStatusDto = Initialize-WatchtowrAPIWhitelistStatusDto  -Enabled true
```

- Convert the resource to JSON
```powershell
$WhitelistStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

