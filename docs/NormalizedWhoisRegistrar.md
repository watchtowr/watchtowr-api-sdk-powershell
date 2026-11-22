# NormalizedWhoisRegistrar
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Registrar name. | 
**IanaId** | **Int32** | IANA ID of the registrar. | 
**Url** | **String** | Registrar website (http or https only). | 
**WhoisServer** | **String** | WHOIS server of the registrar. | 
**Abuse** | [**NormalizedWhoisRegistrarAbuse**](NormalizedWhoisRegistrarAbuse.md) |  | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisRegistrar = Initialize-WatchtowrAPINormalizedWhoisRegistrar  -Name Example Registrar, Inc. `
 -IanaId 376 `
 -Url https://registrar.example `
 -WhoisServer whois.registrar.example `
 -Abuse null
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisRegistrar | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

