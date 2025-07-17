# UnprocessableContent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | 
**StatusCode** | **Decimal** |  | 
**Errors** | [**SystemCollectionsHashtable**](.md) |  | 

## Examples

- Prepare the resource
```powershell
$UnprocessableContent = Initialize-WatchtowrAPIUnprocessableContent  -Message The given data was invalid. `
 -StatusCode 422 `
 -Errors {&quot;status&quot;:[&quot;The status field is required.&quot;,&quot;The selected status is invalid.&quot;],&quot;email&quot;:[&quot;The email field must be a valid email address.&quot;]}
```

- Convert the resource to JSON
```powershell
$UnprocessableContent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

