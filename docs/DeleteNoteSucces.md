# DeleteNoteSucces
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | **Decimal** |  | 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DeleteNoteSucces = Initialize-WatchtowrAPIDeleteNoteSucces  -StatusCode 200 `
 -Message Note deleted successfully
```

- Convert the resource to JSON
```powershell
$DeleteNoteSucces | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

