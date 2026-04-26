# PaginatedActiveDefenseRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ActiveDefenseRule[]**](ActiveDefenseRule.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedActiveDefenseRules = Initialize-WatchtowrAPIPaginatedActiveDefenseRules  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedActiveDefenseRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

