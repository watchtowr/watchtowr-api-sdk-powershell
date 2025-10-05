# UserDetailData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientUserDetail**](ClientUserDetail.md) |  | 

## Examples

- Prepare the resource
```powershell
$UserDetailData = Initialize-WatchtowrAPIUserDetailData  -VarData null
```

- Convert the resource to JSON
```powershell
$UserDetailData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

