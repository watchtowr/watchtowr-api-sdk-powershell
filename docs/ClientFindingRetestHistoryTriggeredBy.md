# ClientFindingRetestHistoryTriggeredBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | User ID or service account ID, depending on &#x60;type&#x60; | 
**Name** | **String** | User name or service account name | 
**Type** | [**RetestRequesterType**](RetestRequesterType.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientFindingRetestHistoryTriggeredBy = Initialize-WatchtowrAPIClientFindingRetestHistoryTriggeredBy  -Id 1 `
 -Name John Doe `
 -Type null
```

- Convert the resource to JSON
```powershell
$ClientFindingRetestHistoryTriggeredBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

