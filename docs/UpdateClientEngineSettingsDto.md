# UpdateClientEngineSettingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdversarySightEnabled** | **Boolean** | This setting manages the Adversary Sight engine coverage for the asset. | 
**DnsBruteforcingEnabled** | **Boolean** | This setting manages the DNS Bruteforcing engine coverage for the asset. | 
**AutomatedRedTeamingEnabled** | **Boolean** | This setting manages the Automated Red Teaming engine coverage for the asset. | 
**CredentialStuffingEnabled** | **Boolean** | This setting manages the Credential Stuffing engine coverage for the asset. | 
**RapidReactionEnabled** | **Boolean** |  This setting manages the Rapid Reaction engine coverage for the asset | 

## Examples

- Prepare the resource
```powershell
$UpdateClientEngineSettingsDto = Initialize-WatchtowrAPIUpdateClientEngineSettingsDto  -AdversarySightEnabled true `
 -DnsBruteforcingEnabled false `
 -AutomatedRedTeamingEnabled true `
 -CredentialStuffingEnabled true `
 -RapidReactionEnabled true
```

- Convert the resource to JSON
```powershell
$UpdateClientEngineSettingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

