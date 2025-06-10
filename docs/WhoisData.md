# WhoisData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**VarData** | [**WhoisDataObject**](WhoisDataObject.md) |  | 
**Raw** | **String** | Raw | 

## Examples

- Prepare the resource
```powershell
$WhoisData = Initialize-PSOpenAPIToolsWhoisData  -Id 1 `
 -VarData null `
 -Raw Domain Name: example.com
Registry Domain ID: 5066842_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.godaddy.com
Registrar URL: http://www.example.com
Updated Date: 2023-04-13T19:03:58Z
Creation Date: 1997-06-18T04:00:00Z
Registrar Registration Expiration Date: 2027-06-17T04:00:00Z
            ...
```

- Convert the resource to JSON
```powershell
$WhoisData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

