# ClientSeedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Descriptive title for the new asset | 
**Type** | **String** | Asset Type for the new asset. Valid asset types are: [] | 
**Value** | **String** | Value for the asset to be added. | 

## Examples

- Prepare the resource
```powershell
$ClientSeedData = Initialize-WatchtowrAPIClientSeedData  -Title Main Website `
 -Type subdomain `
 -Value www.watchTowr.com
```

- Convert the resource to JSON
```powershell
$ClientSeedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

