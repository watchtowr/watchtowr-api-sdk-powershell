# CreateClientNoteDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Note** | **String** | Content of the note. | 
**Title** | **String** | Title of the note. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateClientNoteDto = Initialize-PSOpenAPIToolsCreateClientNoteDto  -Note Passed to the engineering team. Review on 01/07/2024 `
 -Title Initial Review - 01/01/2024
```

- Convert the resource to JSON
```powershell
$CreateClientNoteDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

