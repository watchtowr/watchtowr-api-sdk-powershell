# ClientUserDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | User ID | 
**Name** | **String** | User name | 
**Email** | **String** | User email (masked) | 
**Title** | **String** | User title | 
**MobilePhoneNumber** | **String** | Mobile phone number (masked) | 
**OfficePhoneNumber** | **String** | Office phone number (masked) | 
**CreatedAt** | **System.DateTime** | Created at timestamp | 
**Locked** | **Boolean** | Whether user is locked | 
**Role** | [**SystemCollectionsHashtable**](.md) | User role information | 

## Examples

- Prepare the resource
```powershell
$ClientUserDetail = Initialize-WatchtowrAPIClientUserDetail  -Id 1 `
 -Name John Doe `
 -Email jo*************@example.com `
 -Title Security Manager `
 -MobilePhoneNumber +65XXXXXX89 `
 -OfficePhoneNumber +65XXXXXX12 `
 -CreatedAt 2023-01-01T00:00Z `
 -Locked false `
 -Role null
```

- Convert the resource to JSON
```powershell
$ClientUserDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

