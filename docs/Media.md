# Media
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**PublishedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Media = Initialize-WatchtowrAPIMedia  -Url https://example.com/article `
 -Title Example article title `
 -PublishedAt 2023-12-01T00:00Z
```

- Convert the resource to JSON
```powershell
$Media | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

