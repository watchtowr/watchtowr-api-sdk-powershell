# PaginatedClientDnsRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientDnsRecord[]**](ClientDnsRecord.md) | List of DNS record items | 
**Meta** | [**Meta**](Meta.md) |  | 

## Examples

- Prepare the resource
```powershell
$PaginatedClientDnsRecord = Initialize-WatchtowrAPIPaginatedClientDnsRecord  -VarData null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$PaginatedClientDnsRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

