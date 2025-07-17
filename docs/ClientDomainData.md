# ClientDomainData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientDomain**](ClientDomain.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientDomainData = Initialize-WatchtowrAPIClientDomainData  -VarData null
```

- Convert the resource to JSON
```powershell
$ClientDomainData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

