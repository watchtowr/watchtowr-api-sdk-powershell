# ClientSeedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** |  | 
**Type** | **String** |  | 
**Value** | **String** |  | [optional] 
**Values** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**BusinessUnits** | [**ClientSeedDataBusinessUnit[]**](ClientSeedDataBusinessUnit.md) | Business units associated with the seed data | 

## Examples

- Prepare the resource
```powershell
$ClientSeedData = Initialize-WatchtowrAPIClientSeedData  -Title breitenberg.net `
 -Type domain `
 -Value www.example.com `
 -Values {&quot;cidr&quot;:&quot;192.168.1.0/24&quot;,&quot;asn&quot;:&quot;AS16509&quot;} `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ClientSeedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

