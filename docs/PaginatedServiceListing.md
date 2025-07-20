# PaginatedServiceListing
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ServiceListing[]**](ServiceListing.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedServiceListing = Initialize-WatchtowrAPIPaginatedServiceListing  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedServiceListing | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

