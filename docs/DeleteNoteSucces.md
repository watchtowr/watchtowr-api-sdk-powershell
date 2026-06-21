# DeleteNoteSucces
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**Status** | **Decimal** |  | 
**StatusCode** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$DeleteNoteSucces = Initialize-WatchtowrAPIDeleteNoteSucces  -Message Note deleted successfully `
 -Status 200 `
 -StatusCode 200
```

- Convert the resource to JSON
```powershell
$DeleteNoteSucces | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

