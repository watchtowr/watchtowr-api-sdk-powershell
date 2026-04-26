# ActiveDefenseRuleDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Name** | **String** |  | 
**Description** | **String** |  | 
**ZeroDay** | **Boolean** |  | 
**CreatedAt** | **String** |  | 
**UpdatedAt** | **String** |  | 
**Rules** | [**ActiveDefenseRuleTemplate[]**](ActiveDefenseRuleTemplate.md) |  | 
**Vulnerability** | [**ActiveDefenseRuleVulnerability**](ActiveDefenseRuleVulnerability.md) |  | [optional] 
**FindingsCount** | **Decimal** | Count of confirmed open findings against the rule&#39;s vulnerability. Scoped to the requesting user&#39;s business units and the organization&#39;s finding impact threshold. | 
**AffectedKbEntryIds** | **Decimal[]** | KB entry IDs covered by this rule that have confirmed open findings, scoped to the requesting user&#39;s business units. | 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseRuleDetails = Initialize-WatchtowrAPIActiveDefenseRuleDetails  -Id 9001 `
 -Name SQL Injection in MOVEit Transfer (CVE-2023-34362) `
 -Description Mitigates exploitation attempts against CVE-2023-34362. `
 -ZeroDay false `
 -CreatedAt 2023-12-01T00:00:00.000Z `
 -UpdatedAt 2023-12-02T00:00:00.000Z `
 -Rules null `
 -Vulnerability null `
 -FindingsCount 7 `
 -AffectedKbEntryIds [42,87]
```

- Convert the resource to JSON
```powershell
$ActiveDefenseRuleDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

