# HuntDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Type** | **String** | Type | 
**CreatedAt** | **System.DateTime** | Created at | 
**UpdatedAt** | **System.DateTime** | Updated at | 
**TotalFindings** | **Decimal** | Total findings | 
**TotalAssets** | **Decimal** | Total assets | 
**HuntRequestType** | **String** | Hunt request type | 
**RapidExposureMechanism** | **String** | Rapid exposure mechanism | [optional] 
**Title** | **String** | Title | 
**Description** | **String** |  | 
**Hypothesis** | **String** | Hypothesis | 
**References** | **String[]** | references | 
**CompletedAt** | **System.DateTime** | Completed at | 
**CompletedBy** | **String** | Completed by | 
**RequestedBy** | **String** | Request by | 
**Status** | **String** | Status | 

## Examples

- Prepare the resource
```powershell
$HuntDetail = Initialize-WatchtowrAPIHuntDetail  -Id 1 `
 -Type bespoke `
 -CreatedAt 2023-06-28T02:22:36Z `
 -UpdatedAt 2023-06-28T02:22:36Z `
 -TotalFindings 1 `
 -TotalAssets 10 `
 -HuntRequestType Others `
 -RapidExposureMechanism impactLessPoc `
 -Title Hunt for ITW Exploited Command Injection in Palo Alto Networks GlobalProtect Gateway (CVE-2024-3400) `
 -Description &quot;watchTowr performed a PROACTIVE hunt to determine if there are any instances of Palo Alto GlobalProtect Gateway exposed externally.

Successful exploitation of this vulnerability requires several prerequisites, including device telemetry being enabled on the affected instance.

As details of the vulnerability have been discovered, analysed and reproduced by watchTowr, impact-less proof-of-concept payload(s) will be used to determine if it is possible to abuse the vulnerabilities.

Additionally, it is recommended that any affected instances are reviewed for anomalous activity and behaviour that could indicate the prior exploitation of this vulnerability.

Should any instances of Palo Alto GlobalProtect Gateway be identified, they will be attached to this hunt.&quot;
 `
 -Hypothesis &quot;A security advisory has been published by Palo Alto regarding a critical security vulnerability affecting Palo Alto Networks GlobalProtect Gateway. This vulnerability is tracked as CVE-2024-3400.

This vulnerability could allow an unauthenticated attacker to execute arbitrary code with root privileges on the firewall. Palo Alto have stated exploitation of this vulnerability has been observed in the wild.

The following versions of PAN-OS are affected by the vulnerability:

* PAN-OS version 11.1 - versions lower than 11.1.2-h3
* PAN-OS version 11.0 - versions lower than 11.0.4-h1
* PAN-OS version 10.2 - versions lower than 10.2.9-h1

Palo Alto state that the GlobalProtect gateway and device telemetry must be enabled for an appliance to be vulnerable.&quot;
 `
 -References [&quot;https://security.paloaltonetworks.com/CVE-2024-3400&quot;] `
 -CompletedAt 2023-06-28T02:22:36Z `
 -CompletedBy Steve `
 -RequestedBy John Smith `
 -Status completed
```

- Convert the resource to JSON
```powershell
$HuntDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

