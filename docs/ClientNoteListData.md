# ClientNoteListData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientNote[]**](ClientNote.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientNoteListData = Initialize-PSOpenAPIToolsClientNoteListData  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ClientNoteListData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

