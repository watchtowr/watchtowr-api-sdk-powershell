# ClientFinding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** |  | 
**Title** | **String** |  | 
**Description** | **String** |  | 
**Impact** | **String** |  | 
**FindingImpact** | **String** |  | 
**Tags** | [**ClientFindingImpactTag[]**](ClientFindingImpactTag.md) |  | 
**Evidence** | **String** |  | 
**Recommendation** | **String** |  | 
**Severity** | **String** |  | 
**Cvssv3Score** | **Decimal** |  | 
**Cvssv3Metrics** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | [**SystemCollectionsHashtable**](.md) |  | 
**Affected** | [**SystemCollectionsHashtable**](.md) |  | 
**CveId** | **String** |  | [optional] 
**EpssScore** | **Decimal** |  | [optional] 
**Retest** | [**Retest**](Retest.md) |  | [optional] 
**FindingRetests** | [**FindingRetestResponseDto[]**](FindingRetestResponseDto.md) |  | 
**AssignedUser** | [**ClientFindingAssignee**](ClientFindingAssignee.md) |  | 
**LastSeen** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**LastStatusUpdatedAt** | [**SystemCollectionsHashtable**](.md) |  | 
**Age** | **Decimal** |  | 
**Criticality** | **String** |  | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**DetectionRules** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientFinding = Initialize-WatchtowrAPIClientFinding  -Id 1 `
 -Title Valid Credentials Discovered In Business System `
 -Description Through watchTowr&#39;s Credential Stuffing capabilities, a valid set of credentials have been identified to work to authenticate to a legitimately exposed business system. 

These credentials have been confirmed as valid against the identified system, and are publicly available. `
 -Impact Depending on the system, if leveraged by an attacker it may be possible to:

* Gain access to internal systems
* Gain access to sensitive and confidential data
* Gain VPN access for further internal exploitation and deployment of payloads such as ransomware `
 -FindingImpact Prioritised Findings `
 -Tags null `
 -Evidence URL: https://example.com/adfs/ls

Valid credentials discovered:
Username: user
Password: user123!

MFA status: Single-factor authentication `
 -Recommendation As a priority, it is recommended that the identified credentials be revoked and rotated. As a follow-up an analysis should also be performed to ensure that the identified credentials have not previously been utilised by an attacker.

As a long-term measure to ensure that the security impact of breach credentials are minimised, it is recommended that:
* Two-factor authentication (2FA) to be enabled for all business systems that support it, which provides an additional layer of security
* Use a Single Sign-On (SSO) service for business systems, where possible
 `
 -Severity high `
 -Cvssv3Score 8.1 `
 -Cvssv3Metrics CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N/E:F/RL:W/RC:C `
 -Status confirmed `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -Affected null `
 -CveId CVE-2023-38180 `
 -EpssScore 0.97521 `
 -Retest null `
 -FindingRetests null `
 -AssignedUser null `
 -LastSeen 2022-02-13T02:10:00.000000Z `
 -LastStatusUpdatedAt 2022-02-13T02:10:00.000000Z `
 -Age 30 `
 -Criticality Medium `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;finding&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;finding&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -DetectionRules [{&quot;type&quot;:&quot;sigma&quot;,&quot;id&quot;:155,&quot;tags&quot;:[&quot;attack.initial-access&quot;,&quot;attack.t1190&quot;,&quot;cve.2021-44228&quot;,&quot;detection.emerging-threats&quot;],&quot;title&quot;:&quot;Potential CVE-2021-44228 Exploitation Attempt - VMware Horizon&quot;,&quot;url&quot;:&quot;https://github.com/SigmaHQ/sigma/blob/master/rules-emerging-threats/2021/Exploits/CVE-2021-44228/proc_creation_win_exploit_cve_2021_44228_vmware_horizon_log4j.yml&quot;}]
```

- Convert the resource to JSON
```powershell
$ClientFinding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

