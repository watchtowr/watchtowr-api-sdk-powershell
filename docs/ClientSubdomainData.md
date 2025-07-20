# ClientSubdomainData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientSubdomain**](ClientSubdomain.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientSubdomainData = Initialize-WatchtowrAPIClientSubdomainData  -VarData null
```

- Convert the resource to JSON
```powershell
$ClientSubdomainData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

