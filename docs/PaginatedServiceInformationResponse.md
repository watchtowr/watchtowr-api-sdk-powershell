# PaginatedServiceInformationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ServiceInformationResponse[]**](ServiceInformationResponse.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedServiceInformationResponse = Initialize-WatchtowrAPIPaginatedServiceInformationResponse  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedServiceInformationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

