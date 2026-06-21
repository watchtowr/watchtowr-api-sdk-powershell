# ClientPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Port protocol, always uppercased (e.g. &#x60;TCP&#x60;, &#x60;UDP&#x60;). | 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**LastSeenAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**Ip** | **String** |  | [optional] 
**IpId** | **Decimal** |  | [optional] 
**Port** | **Decimal** |  | 
**Banner** | **String** |  | [optional] 
**Service** | **String** |  | 
**State** | **String** | Port state (e.g. &#x60;open&#x60;, &#x60;closed&#x60;, &#x60;filtered&#x60;). | [optional] 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientPort = Initialize-WatchtowrAPIClientPort  -Type TCP `
 -Status verified `
 -CreatedAt 2022-02-13T02:10Z `
 -LastSeenAt 2022-02-13T02:10Z `
 -Id 123 `
 -Ip 123.123.123.123 `
 -IpId 333 `
 -Port 22 `
 -Banner OpenSSH6.6.1p1 Ubuntu 2ubuntu2.13Ubuntu Linux; protocol 2.0 `
 -Service ssh `
 -State open `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ClientPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

