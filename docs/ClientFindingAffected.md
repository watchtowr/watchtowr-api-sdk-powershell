# ClientFindingAffected
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SystemCollectionsHashtable**](.md) | The affected asset object. Shape varies by asset type (domain, subdomain, ip, port, etc.). | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientFindingAffected = Initialize-WatchtowrAPIClientFindingAffected  -VarData {&quot;type&quot;:&quot;subdomain&quot;,&quot;source&quot;:&quot;module-adversarysight-tls-ssl-certificate-transparency-discovery&quot;,&quot;status&quot;:&quot;verified&quot;,&quot;created_at&quot;:&quot;2023-07-24T03:03:58.000Z&quot;,&quot;id&quot;:&quot;557&quot;,&quot;discovery_reason&quot;:null,&quot;name&quot;:&quot;example.com&quot;,&quot;businessUnits&quot;:[],&quot;metadata&quot;:{},&quot;live&quot;:false,&quot;customProperties&quot;:[],&quot;criticality&quot;:null,&quot;engineSettings&quot;:{&quot;adversarySightEnabled&quot;:true,&quot;dnsBruteforcingEnabled&quot;:true,&quot;automatedRedTeamingEnabled&quot;:true,&quot;intrusiveHttpChecksEnabled&quot;:true,&quot;credentialStuffingEnabled&quot;:true,&quot;rapidReactionEnabled&quot;:true}}
```

- Convert the resource to JSON
```powershell
$ClientFindingAffected | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

