# InviteClientUsersBodyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**InviteClientUserDto[]**](InviteClientUserDto.md) | List of users to invite | 

## Examples

- Prepare the resource
```powershell
$InviteClientUsersBodyDto = Initialize-WatchtowrAPIInviteClientUsersBodyDto  -Users null
```

- Convert the resource to JSON
```powershell
$InviteClientUsersBodyDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

