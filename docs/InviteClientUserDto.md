# InviteClientUserDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **String** | Email address of the user to invite | 
**RoleType** | **String** | Role type for the user | 
**BusinessUnitIds** | **Decimal[]** | Business Unit IDs to assign (required for BU_USER roles) | [optional] 

## Examples

- Prepare the resource
```powershell
$InviteClientUserDto = Initialize-WatchtowrAPIInviteClientUserDto  -Email john.doe@example.com `
 -RoleType USER `
 -BusinessUnitIds [1,2]
```

- Convert the resource to JSON
```powershell
$InviteClientUserDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

