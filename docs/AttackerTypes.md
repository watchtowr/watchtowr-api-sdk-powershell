# AttackerTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AptGroup** | **Boolean** |  | 
**Ransomware** | **Boolean** |  | 
**Botnet** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AttackerTypes = Initialize-WatchtowrAPIAttackerTypes  -AptGroup true `
 -Ransomware true `
 -Botnet false
```

- Convert the resource to JSON
```powershell
$AttackerTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

