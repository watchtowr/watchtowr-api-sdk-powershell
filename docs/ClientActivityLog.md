# ClientActivityLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Description** | **String** | Description | 
**Type** | **String** | Subject | 
**Properties** | [**SystemCollectionsHashtable**](.md) | Log properties | [optional] 
**CreatedAt** | **System.DateTime** | Timestamp | [optional] 
**CausedBy** | [**Causer**](Causer.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientActivityLog = Initialize-WatchtowrAPIClientActivityLog  -Id 1 `
 -Description Successful login from 123.123.123.123 `
 -Type Successful Login `
 -Properties {&quot;attributes&quot;: {&quot;ip&quot;: &quot;123.123.123.123&quot;}} `
 -CreatedAt 2022-02-22T22:00Z `
 -CausedBy null
```

- Convert the resource to JSON
```powershell
$ClientActivityLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

