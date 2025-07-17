# SuspiciousDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | **String** | Name | 
**DiscoveryReason** | **String** | Discovery Reason | 
**Status** | **String** |  | 
**WhoisData** | [**WhoisData[]**](WhoisData.md) |  | 
**CreatedAt** | **System.DateTime** | Discovery date | [optional] 

## Examples

- Prepare the resource
```powershell
$SuspiciousDomain = Initialize-WatchtowrAPISuspiciousDomain  -Id 1 `
 -Name example.com `
 -DiscoveryReason Example reason `
 -Status legitimate `
 -WhoisData null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$SuspiciousDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

