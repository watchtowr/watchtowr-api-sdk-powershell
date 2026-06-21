# KbEntryCwe
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CweId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**CweUrl** | **String** | MITRE CWE definition URL for the entry. | [optional] 

## Examples

- Prepare the resource
```powershell
$KbEntryCwe = Initialize-WatchtowrAPIKbEntryCwe  -CweId CWE-89 `
 -Name Improper Neutralization of Special Elements used in an SQL Command (&#39;SQL Injection&#39;) `
 -CweUrl https://cwe.mitre.org/data/definitions/89.html
```

- Convert the resource to JSON
```powershell
$KbEntryCwe | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

