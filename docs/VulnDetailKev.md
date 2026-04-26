# VulnDetailKev
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CisaKevDateAdded** | **System.DateTime** |  | [optional] 
**VulncheckKevDateAdded** | **System.DateTime** |  | [optional] 
**WatchtowrKevDateAdded** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VulnDetailKev = Initialize-WatchtowrAPIVulnDetailKev  -CisaKevDateAdded 2023-06-15T00:00Z `
 -VulncheckKevDateAdded 2023-06-13T00:00Z `
 -WatchtowrKevDateAdded 2023-06-12T00:00Z
```

- Convert the resource to JSON
```powershell
$VulnDetailKev | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

