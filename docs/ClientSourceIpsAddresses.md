# ClientSourceIpsAddresses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ClientSourceIpsAddresses = Initialize-PSOpenAPIToolsClientSourceIpsAddresses  -VarData [{&quot;name&quot;:&quot;123.123.123.123/24&quot;,&quot;description&quot;:&quot;Used for outbound network activities (Singapore)&quot;},{&quot;name&quot;:&quot;456.456.456.456/24&quot;,&quot;description&quot;:&quot;Used for outbound network activities (Australia)&quot;},{&quot;name&quot;:&quot;789.789.789.789&quot;,&quot;description&quot;:&quot;Used for WAF and whitelisting checks from Singapore (do not whitelist)&quot;},{&quot;name&quot;:&quot;wtwr.to&quot;,&quot;description&quot;:&quot;Used for blind XSS payloads and callbacks&quot;}]
```

- Convert the resource to JSON
```powershell
$ClientSourceIpsAddresses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

