# ClientPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**UpdatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**LastSeenAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**DeletedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**Id** | **Decimal** |  | 
**Ip** | **String** |  | 
**IpId** | **Decimal** |  | 
**Port** | **Decimal** |  | 
**Banner** | **String** |  | 
**Service** | **String** |  | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientPort = Initialize-PSOpenAPIToolsClientPort  -Type TCP `
 -Status verified `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -LastSeenAt 2022-02-13T02:10:00.000000Z `
 -DeletedAt 2022-02-13T02:10:00.000000Z `
 -Id 123 `
 -Ip 123.123.123.123 `
 -IpId 333 `
 -Port 22 `
 -Banner OpenSSH6.6.1p1 Ubuntu 2ubuntu2.13Ubuntu Linux; protocol 2.0 `
 -Service ssh `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ClientPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

