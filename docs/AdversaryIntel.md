# AdversaryIntel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttackerId** | **Decimal** |  | 
**Name** | **String** |  | 
**Aliases** | **String[]** |  | [optional] 
**Type** | **String** |  | 
**OriginCountryCode** | **String** |  | [optional] 
**LastReportedDate** | **System.DateTime** |  | [optional] 
**VictimCountries** | [**VictimCountrySummary**](VictimCountrySummary.md) |  | [optional] 
**TargetIndustries** | [**TargetIndustrySummary**](TargetIndustrySummary.md) |  | [optional] 
**AffectedTrackedHuntsCount** | **Decimal** |  | [optional] 
**AffectedOpenFindingsCount** | **Decimal** |  | [optional] 
**IsAffected** | **Boolean** | Whether the user has confirmed open findings against vulnerabilities exploited by this adversary. Scoped to the requesting user&#39;s business units and the organization&#39;s finding impact threshold. | 
**AffectedKbEntryIds** | **Decimal[]** | KB entry IDs that drive the &#x60;isAffected&#x60; flag, scoped to the requesting user&#39;s business units. | [optional] 

## Examples

- Prepare the resource
```powershell
$AdversaryIntel = Initialize-WatchtowrAPIAdversaryIntel  -AttackerId 1234 `
 -Name Cl0p `
 -Aliases [&quot;TA505&quot;] `
 -Type ransomware `
 -OriginCountryCode RU `
 -LastReportedDate 2023-12-01T00:00Z `
 -VictimCountries null `
 -TargetIndustries null `
 -AffectedTrackedHuntsCount 3 `
 -AffectedOpenFindingsCount 7 `
 -IsAffected true `
 -AffectedKbEntryIds [42,87]
```

- Convert the resource to JSON
```powershell
$AdversaryIntel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

