# ClientUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | User ID | 
**Name** | **String** | User name | 
**Email** | **String** | User email | 
**Title** | **String** | User title | 
**MobilePhoneNumber** | **String** | Mobile phone number (masked) | 
**OfficePhoneNumber** | **String** | Office phone number (masked) | 
**CreatedAt** | **System.DateTime** | Created at timestamp | 
**Locked** | **Boolean** | Whether user is locked | 

## Examples

- Prepare the resource
```powershell
$ClientUser = Initialize-WatchtowrAPIClientUser  -Id 1 `
 -Name John Doe `
 -Email john.doe@example.com `
 -Title Security Manager `
 -MobilePhoneNumber +65XXXXXX89 `
 -OfficePhoneNumber +65XXXXXX12 `
 -CreatedAt 2023-01-01T00:00Z `
 -Locked false
```

- Convert the resource to JSON
```powershell
$ClientUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

