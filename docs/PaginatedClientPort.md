# PaginatedClientPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientPort[]**](ClientPort.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientPort = Initialize-WatchtowrAPIPaginatedClientPort  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

