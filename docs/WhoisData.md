# WhoisData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | ID | 
**VarData** | [**WhoisDataObject**](WhoisDataObject.md) |  | 
**Raw** | **String** | Raw | 
**Normalized** | [**NormalizedWhoisDomain**](NormalizedWhoisDomain.md) | Structured, best-effort reading of the WHOIS record (schema version 1). Returned only when it is enabled for your tenant. Null when the record is not structured yet. WHOIS has no standard format: &#x60;raw&#x60; stays the reference. | [optional] 

## Examples

- Prepare the resource
```powershell
$WhoisData = Initialize-WatchtowrAPIWhoisData  -Id 1 `
 -VarData null `
 -Raw Domain Name: example.com
Registry Domain ID: 5066842_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.godaddy.com
Registrar URL: http://www.example.com
Updated Date: 2023-04-13T19:03:58Z
Creation Date: 1997-06-18T04:00:00Z
Registrar Registration Expiration Date: 2027-06-17T04:00:00Z
            ... `
 -Normalized null
```

- Convert the resource to JSON
```powershell
$WhoisData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

