# HuntAcknowledgementDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsAcknowledged** | **Boolean** | Whether the hunt has been acknowledged | 
**NumberOfSeen** | **Decimal** | Number of users who have seen the hunt | 

## Examples

- Prepare the resource
```powershell
$HuntAcknowledgementDto = Initialize-WatchtowrAPIHuntAcknowledgementDto  -IsAcknowledged true `
 -NumberOfSeen 3
```

- Convert the resource to JSON
```powershell
$HuntAcknowledgementDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

