# VictimCountry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CountryCode** | **String** |  | [optional] 
**CountryName** | **String** |  | [optional] 
**Count** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VictimCountry = Initialize-WatchtowrAPIVictimCountry  -CountryCode US `
 -CountryName United States `
 -Count 12
```

- Convert the resource to JSON
```powershell
$VictimCountry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

