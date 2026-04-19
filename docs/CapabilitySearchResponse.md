# CapabilitySearchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**CapabilitySearchData**](CapabilitySearchData.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$CapabilitySearchResponse = Initialize-WatchtowrAPICapabilitySearchResponse  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$CapabilitySearchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

