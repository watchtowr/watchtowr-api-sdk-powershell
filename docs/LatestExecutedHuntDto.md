# LatestExecutedHuntDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Hunt identifier | 
**Title** | **String** | Hunt title | 
**Status** | **String** | Hunt status | 
**TotalFindings** | **Decimal** | Number of findings discovered | 
**TotalAssets** | **Decimal** | Number of assets affected | 
**NeedInvestigation** | **Boolean** | Whether manual investigation is required | 
**RequestType** | **String** | Type of hunt request | 
**ResolvedStatus** | **Boolean** | Whether the hunt has been resolved | 
**Acknowledgement** | [**HuntAcknowledgementDto**](HuntAcknowledgementDto.md) | Hunt acknowledgement data | 
**ThreatActors** | [**ThreatActorDto[]**](ThreatActorDto.md) | Associated threat actors | 

## Examples

- Prepare the resource
```powershell
$LatestExecutedHuntDto = Initialize-WatchtowrAPILatestExecutedHuntDto  -Id 1 `
 -Title CVE-2024-1234 Apache RCE `
 -Status completed `
 -TotalFindings 2 `
 -TotalAssets 5 `
 -NeedInvestigation false `
 -RequestType SoftwareVulnerability `
 -ResolvedStatus false `
 -Acknowledgement null `
 -ThreatActors null
```

- Convert the resource to JSON
```powershell
$LatestExecutedHuntDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

