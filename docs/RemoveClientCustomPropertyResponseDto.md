# RemoveClientCustomPropertyResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**Status** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$RemoveClientCustomPropertyResponseDto = Initialize-WatchtowrAPIRemoveClientCustomPropertyResponseDto  -Message Custom property deleted successfully. `
 -Status 200
```

- Convert the resource to JSON
```powershell
$RemoveClientCustomPropertyResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

