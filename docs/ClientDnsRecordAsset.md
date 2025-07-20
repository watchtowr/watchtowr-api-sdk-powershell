# ClientDnsRecordAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Asset ID | 
**Name** | **String** | Asset name | 
**Type** | **String** | Asset type | 

## Examples

- Prepare the resource
```powershell
$ClientDnsRecordAsset = Initialize-WatchtowrAPIClientDnsRecordAsset  -Id 456 `
 -Name example.com `
 -Type domain
```

- Convert the resource to JSON
```powershell
$ClientDnsRecordAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

