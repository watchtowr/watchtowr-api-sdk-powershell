# FindingListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientFinding[]**](ClientFinding.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$FindingListResponse = Initialize-PSOpenAPIToolsFindingListResponse  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$FindingListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

