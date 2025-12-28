# ClientEngineSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdversarySightEnabled** | **Boolean** | Indicates whether the Adversary Sight engine coverage is enabled for the asset. | 
**AutomatedRedTeamingEnabled** | **Boolean** | Indicates whether the Automated Red Teaming engine coverage is enabled for the asset. | 
**CredentialStuffingEnabled** | **Boolean** | Indicates whether the Credential Stuffing engine coverage is enabled for the asset. | 
**DnsBruteforcingEnabled** | **Boolean** | Indicates whether the DNS Bruteforcing engine coverage is enabled for the asset. | 
**RapidReactionEnabled** | **Boolean** | Indicates whether the Rapid Reaction engine coverage is enabled for the asset | 
**IntrusiveHttpChecksEnabled** | **Boolean** | Indicates whether the Intrusive HTTP Check engine coverage is enabled for the asset. | 

## Examples

- Prepare the resource
```powershell
$ClientEngineSettings = Initialize-WatchtowrAPIClientEngineSettings  -AdversarySightEnabled true `
 -AutomatedRedTeamingEnabled true `
 -CredentialStuffingEnabled true `
 -DnsBruteforcingEnabled false `
 -RapidReactionEnabled true `
 -IntrusiveHttpChecksEnabled false
```

- Convert the resource to JSON
```powershell
$ClientEngineSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

