# UpdateClientUserBodyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleType** | **String** | Role type to assign to the user | 
**BusinessUnitIds** | **Decimal[]** | Business Unit IDs to assign (required for BU_USER roles) | 
**Locked** | **Boolean** | Whether the user is locked (prevented from logging in). &#x60;true&#x60; on a user locked by failed logins turns it into an admin lock: their sessions end, and a password reset no longer unlocks them. | 

## Examples

- Prepare the resource
```powershell
$UpdateClientUserBodyDto = Initialize-WatchtowrAPIUpdateClientUserBodyDto  -RoleType USER `
 -BusinessUnitIds [1,2] `
 -Locked false
```

- Convert the resource to JSON
```powershell
$UpdateClientUserBodyDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

