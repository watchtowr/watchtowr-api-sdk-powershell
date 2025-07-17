# RemoveClientCustomPropertyResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**Status** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$RemoveClientCustomPropertyResponseDto = Initialize-PSOpenAPIToolsRemoveClientCustomPropertyResponseDto  -Message Custom property deleted successfully. `
 -Status 200
```

- Convert the resource to JSON
```powershell
$RemoveClientCustomPropertyResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

