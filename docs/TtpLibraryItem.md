# TtpLibraryItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Tactic ID | 
**Name** | **String** | Tactic name | 
**Identifier** | **String** | Tactic identifier | 
**Type** | **String** | Tactic type | 
**Category** | [**TtpLibraryCategoryItem**](TtpLibraryCategoryItem.md) | Parent category | 
**Module** | **String** | Module name | [optional] 
**EnabledOn** | **System.DateTime** | Date the tactic was enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$TtpLibraryItem = Initialize-WatchtowrAPITtpLibraryItem  -Id 789 `
 -Name CVE-2024-3400 - PAN-OS GlobalProtect Gateway Command Injection `
 -Identifier CVE-2024-3400 `
 -Type AdversarySight `
 -Category null `
 -Module module-panos-cve-2024-3400-v1.0 `
 -EnabledOn 2024-04-16T00:00Z
```

- Convert the resource to JSON
```powershell
$TtpLibraryItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

