# ClientCompromisedEndpoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Compromised endpoint ID | 
**Hostname** | **String** | Hostname of the compromised endpoint | 
**Ip** | **String** | IP address of the compromised endpoint | 
**StealerId** | **String** | Unique stealer identifier | 
**StealerFamily** | **String** | Stealer malware family | 
**Status** | **String** | Status of the compromised endpoint | 
**DateCompromised** | **String** | Date and time when the endpoint was compromised | 
**OperatingSystem** | **String** | Operating system of the compromised endpoint | 
**MalwarePath** | **String** | File path where the malware was located | 
**Country** | **String** | Country where the compromised endpoint is located | 
**DiscoveryType** | **String** | Method used to discover the compromised endpoint | 
**DiscoveryValue** | **String** | Value used for discovery (e.g., credential, domain) | 
**CreatedAt** | **String** | Date when the endpoint was first discovered | 
**UpdatedAt** | **String** | Date when the endpoint record was last updated | 

## Examples

- Prepare the resource
```powershell
$ClientCompromisedEndpoint = Initialize-WatchtowrAPIClientCompromisedEndpoint  -Id 123 `
 -Hostname DESKTOP-ABC123 `
 -Ip 192.168.1.100 `
 -StealerId abc123def456 `
 -StealerFamily Redline `
 -Status pending `
 -DateCompromised 2023-01-01T12:00:00.000Z `
 -OperatingSystem Windows 10 Pro `
 -MalwarePath C:\Users\User\AppData\Local\Temp\malware.exe `
 -Country United States `
 -DiscoveryType credential `
 -DiscoveryValue admin@example.com `
 -CreatedAt 2023-01-01T12:00:00.000Z `
 -UpdatedAt 2023-01-02T12:00:00.000Z
```

- Convert the resource to JSON
```powershell
$ClientCompromisedEndpoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

