# ActiveDefenseRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**RuleName** | **String** |  | 
**CveId** | **String** |  | [optional] 
**WtId** | **Decimal** |  | [optional] 
**Type** | **String** |  | [optional] 
**KevStatus** | [**ActiveDefenseRuleKevStatus**](ActiveDefenseRuleKevStatus.md) |  | 
**ZeroDay** | **Boolean** |  | 
**Providers** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseRule = Initialize-WatchtowrAPIActiveDefenseRule  -Id 9001 `
 -RuleName SQL Injection in MOVEit Transfer (CVE-2023-34362) `
 -CveId CVE-2023-34362 `
 -WtId 12345 `
 -Type cve `
 -KevStatus null `
 -ZeroDay false `
 -Providers [&quot;cloudflare&quot;] `
 -CreatedAt 2023-12-01T00:00Z `
 -UpdatedAt 2023-12-02T00:00Z
```

- Convert the resource to JSON
```powershell
$ActiveDefenseRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

