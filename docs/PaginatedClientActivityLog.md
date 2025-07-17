# PaginatedClientActivityLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientActivityLog[]**](ClientActivityLog.md) |  | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientActivityLog = Initialize-PSOpenAPIToolsPaginatedClientActivityLog  -VarData [{&quot;id&quot;:128462,&quot;description&quot;:&quot;Successful login from 123.123.123.123&quot;,&quot;type&quot;:&quot;Successful Login&quot;,&quot;properties&quot;:{&quot;attributes&quot;:{&quot;ip_address&quot;:&quot;123.123.123.123&quot;,&quot;user_agent&quot;:&quot;Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36&quot;}},&quot;created_at&quot;:&quot;2024-01-02T09:19:12.000Z&quot;,&quot;caused_by&quot;:{&quot;id&quot;:80,&quot;name&quot;:&quot;Example user name 1&quot;}},{&quot;id&quot;:128631,&quot;description&quot;:&quot;Attack Surface Summary Report generated&quot;,&quot;type&quot;:&quot;Report Generated&quot;,&quot;properties&quot;:{&quot;attributes&quot;:{}},&quot;created_at&quot;:&quot;2024-01-23T07:53:58.000Z&quot;,&quot;caused_by&quot;:{&quot;id&quot;:53,&quot;name&quot;:&quot;Example user name 2&quot;}}] `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientActivityLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

