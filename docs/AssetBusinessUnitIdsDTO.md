# AssetBusinessUnitIdsDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BusinessUnitIds** | **String[]** | List of business unit IDs to assign the asset to. | 

## Examples

- Prepare the resource
```powershell
$AssetBusinessUnitIdsDTO = Initialize-WatchtowrAPIAssetBusinessUnitIdsDTO  -BusinessUnitIds [1,2,3]
```

- Convert the resource to JSON
```powershell
$AssetBusinessUnitIdsDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

