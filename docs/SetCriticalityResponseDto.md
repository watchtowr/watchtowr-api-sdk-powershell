# SetCriticalityResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | The ID of the custom property record. | 
**Key** | **String** | The property key. | 
**Value** | **String** | The criticality value. | 
**IsPreset** | **Boolean** | Whether this is a preset property. | 

## Examples

- Prepare the resource
```powershell
$SetCriticalityResponseDto = Initialize-WatchtowrAPISetCriticalityResponseDto  -Id 50577 `
 -Key Criticality `
 -Value High `
 -IsPreset true
```

- Convert the resource to JSON
```powershell
$SetCriticalityResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

