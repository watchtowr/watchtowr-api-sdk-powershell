# PaginatedPointOfInterest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**PointsOfInterest[]**](PointsOfInterest.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedPointOfInterest = Initialize-PSOpenAPIToolsPaginatedPointOfInterest  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedPointOfInterest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

