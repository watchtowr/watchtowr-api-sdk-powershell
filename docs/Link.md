# Link
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Previous** | **String** |  | [optional] 
**Next** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Link = Initialize-WatchtowrAPILink  -Previous null `
 -Next null
```

- Convert the resource to JSON
```powershell
$Link | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

