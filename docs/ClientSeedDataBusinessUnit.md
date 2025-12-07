# ClientSeedDataBusinessUnit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Business Unit ID | 
**Name** | **String** | Business Unit name | 
**Description** | **String** | Business Unit description | [optional] 
**Type** | **String** | Business Unit type | 
**CreatedAt** | **System.DateTime** | Creation date | 
**UpdatedAt** | **System.DateTime** | Last update date | 

## Examples

- Prepare the resource
```powershell
$ClientSeedDataBusinessUnit = Initialize-WatchtowrAPIClientSeedDataBusinessUnit  -Id 1 `
 -Name Engineering `
 -Description Engineering team business unit `
 -Type USER_DEFINED `
 -CreatedAt 2023-01-01T12:00Z `
 -UpdatedAt 2023-01-01T12:00Z
```

- Convert the resource to JSON
```powershell
$ClientSeedDataBusinessUnit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

