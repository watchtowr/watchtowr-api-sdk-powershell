# ClientContainerData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientContainer**](ClientContainer.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientContainerData = Initialize-PSOpenAPIToolsClientContainerData  -VarData null
```

- Convert the resource to JSON
```powershell
$ClientContainerData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

