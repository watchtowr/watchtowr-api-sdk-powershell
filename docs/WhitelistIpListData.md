# WhitelistIpListData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**WhitelistIpData[]**](WhitelistIpData.md) | List of whitelisted IPs | 

## Examples

- Prepare the resource
```powershell
$WhitelistIpListData = Initialize-WatchtowrAPIWhitelistIpListData  -VarData null
```

- Convert the resource to JSON
```powershell
$WhitelistIpListData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

