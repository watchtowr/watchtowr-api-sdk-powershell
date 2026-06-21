# ClientNote
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Note** | **String** |  | 
**NoteType** | **String** |  | 
**NoteId** | **Decimal** |  | 
**Title** | **String** |  | 
**Author** | [**ClientNoteAuthor**](ClientNoteAuthor.md) |  | 
**LastModified** | [**ClientNoteLastModified**](ClientNoteLastModified.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientNote = Initialize-WatchtowrAPIClientNote  -Id 1 `
 -Note Passed to the engineering team. Review on 01/07/2024 `
 -NoteType Domain `
 -NoteId 2 `
 -Title Initial Review - 01/01/2024 `
 -Author null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ClientNote | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

