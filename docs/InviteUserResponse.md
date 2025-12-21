# InviteUserResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Success status | 
**InvitedCount** | **Decimal** | Number of users invited | 
**InvitedEmails** | **String[]** | List of emails that were invited | 

## Examples

- Prepare the resource
```powershell
$InviteUserResponse = Initialize-WatchtowrAPIInviteUserResponse  -Success true `
 -InvitedCount 2 `
 -InvitedEmails [&quot;john.doe@example.com&quot;,&quot;jane.doe@example.com&quot;]
```

- Convert the resource to JSON
```powershell
$InviteUserResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

