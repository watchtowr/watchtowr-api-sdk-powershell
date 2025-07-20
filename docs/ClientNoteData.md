# ClientNoteData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientNote**](ClientNote.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientNoteData = Initialize-WatchtowrAPIClientNoteData  -VarData null
```

- Convert the resource to JSON
```powershell
$ClientNoteData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

