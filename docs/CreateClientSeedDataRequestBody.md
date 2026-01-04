# CreateClientSeedDataRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientSeedData[]**](ClientSeedData.md) | JSON array listing seed data assets to submit for review. | 
**BusinessUnits** | [**FilterByBusinessUnitInput[]**](FilterByBusinessUnitInput.md) | List of business units to allocate new assets to. -1 indicates UNASSIGNED business unit | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateClientSeedDataRequestBody = Initialize-WatchtowrAPICreateClientSeedDataRequestBody  -VarData [{&quot;title&quot;:&quot;Main Website&quot;,&quot;type&quot;:&quot;subdomain&quot;,&quot;value&quot;:&quot;www.watchTowr.com&quot;},{&quot;title&quot;:&quot;Labs Blog IP&quot;,&quot;type&quot;:&quot;ip&quot;,&quot;value&quot;:&quot;123.123.123.123&quot;},{&quot;title&quot;:&quot;IP Range&quot;,&quot;type&quot;:&quot;ipRange&quot;,&quot;values&quot;:{&quot;cidr&quot;:&quot;192.168.1.0/24&quot;,&quot;asn&quot;:&quot;AS16509&quot;}}] `
 -BusinessUnits [{&quot;id&quot;:-1,&quot;type&quot;:&quot;UNASSIGNED&quot;}]
```

- Convert the resource to JSON
```powershell
$CreateClientSeedDataRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

