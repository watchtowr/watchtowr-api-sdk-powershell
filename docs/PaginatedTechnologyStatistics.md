# PaginatedTechnologyStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**TechnologyStatistic[]**](TechnologyStatistic.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedTechnologyStatistics = Initialize-WatchtowrAPIPaginatedTechnologyStatistics  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedTechnologyStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

