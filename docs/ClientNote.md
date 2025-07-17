# ClientNote
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Note** | **String** |  | 
**NoteType** | **String** |  | 
**NoteId** | **Decimal** |  | 
**Title** | **String** |  | 
**Author** | [**SystemCollectionsHashtable**](.md) |  | 
**LastModified** | [**DatetimeDate**](DatetimeDate.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientNote = Initialize-PSOpenAPIToolsClientNote  -Id 1 `
 -Note Passed to the engineering team. Review on 01/07/2024 `
 -NoteType Domain `
 -NoteId 2 `
 -Title Initial Review - 01/01/2024 `
 -Author {&quot;id&quot;:1,&quot;name&quot;:&quot;Steve&quot;} `
 -LastModified 2022-02-13T02:10:00.000000Z
```

- Convert the resource to JSON
```powershell
$ClientNote | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

