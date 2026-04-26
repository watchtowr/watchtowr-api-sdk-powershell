# AdversaryIntelDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttackerId** | **Decimal** |  | 
**Name** | **String** |  | 
**Type** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Aliases** | **String[]** |  | [optional] 
**CountryCode** | **String** |  | [optional] 
**FirstReportedDate** | **System.DateTime** |  | [optional] 
**VulnerabilityLastUpdated** | **System.DateTime** |  | [optional] 
**MitreLastUpdated** | **System.DateTime** |  | [optional] 
**VictimCountries** | [**VictimCountrySummary**](VictimCountrySummary.md) |  | [optional] 
**TargetIndustries** | [**TargetIndustrySummary**](TargetIndustrySummary.md) |  | [optional] 
**LatestMedia** | [**Media[]**](Media.md) |  | [optional] 
**IsAffected** | **Boolean** | Whether the user has confirmed open findings against vulnerabilities exploited by this adversary. Scoped to the requesting user&#39;s business units and the organization&#39;s finding impact threshold. | 
**AffectedKbEntryIds** | **Decimal[]** | KB entry IDs that drive the &#x60;isAffected&#x60; flag, scoped to the requesting user&#39;s business units. | 

## Examples

- Prepare the resource
```powershell
$AdversaryIntelDetails = Initialize-WatchtowrAPIAdversaryIntelDetails  -AttackerId 1234 `
 -Name Cl0p `
 -Type ransomware `
 -Description A financially motivated ransomware group. `
 -Aliases [&quot;TA505&quot;] `
 -CountryCode RU `
 -FirstReportedDate 2019-02-01T00:00Z `
 -VulnerabilityLastUpdated 2023-12-01T00:00Z `
 -MitreLastUpdated 2023-12-01T00:00Z `
 -VictimCountries null `
 -TargetIndustries null `
 -LatestMedia null `
 -IsAffected true `
 -AffectedKbEntryIds [42,87]
```

- Convert the resource to JSON
```powershell
$AdversaryIntelDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

