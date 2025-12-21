# UpdateUserResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientUserDetail**](ClientUserDetail.md) |  | 

## Examples

- Prepare the resource
```powershell
$UpdateUserResponse = Initialize-WatchtowrAPIUpdateUserResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$UpdateUserResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

