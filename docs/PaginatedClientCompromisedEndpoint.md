# PaginatedClientCompromisedEndpoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientCompromisedEndpoint[]**](ClientCompromisedEndpoint.md) | List of compromised endpoints | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientCompromisedEndpoint = Initialize-WatchtowrAPIPaginatedClientCompromisedEndpoint  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientCompromisedEndpoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

