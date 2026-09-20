# PaginatedClientCompromisedEndpointHarvestedCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientCompromisedEndpointHarvestedCredential[]**](ClientCompromisedEndpointHarvestedCredential.md) | List of harvested credentials | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientCompromisedEndpointHarvestedCredentials = Initialize-WatchtowrAPIPaginatedClientCompromisedEndpointHarvestedCredentials  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientCompromisedEndpointHarvestedCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

