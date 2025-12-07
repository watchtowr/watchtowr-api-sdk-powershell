# ClientSeedDataListItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | Seed Data ID | 
**Title** | **String** | Descriptive title for the asset | 
**Type** | **String** | Asset Type. Valid asset types are: [domain, subdomain, ip, ipRange, repository, cloudStorage, container, mobileApp, saasPlatform, cloudAsset, apiDocumentation, packageManager] | 
**Value** | **String** | Value for the asset | [optional] 
**Values** | [**SystemCollectionsHashtable**](.md) | JSON values for the asset | [optional] 
**StatusName** | **String** | Status name of the seed data | 
**StatusReason** | **String** | Status reason for the seed data | [optional] 
**CreatedAt** | **System.DateTime** | Creation date | 
**User** | [**ClientSeedDataUser**](ClientSeedDataUser.md) | User who submitted the seed data | 
**BusinessUnits** | [**ClientSeedDataBusinessUnit[]**](ClientSeedDataBusinessUnit.md) | Business units associated with the seed data | 

## Examples

- Prepare the resource
```powershell
$ClientSeedDataListItem = Initialize-WatchtowrAPIClientSeedDataListItem  -Id 123 `
 -Title Main Website `
 -Type subdomain `
 -Value www.watchTowr.com `
 -Values {&quot;value&quot;:&quot;www.watchTowr.com&quot;} `
 -StatusName pending `
 -StatusReason needs verification `
 -CreatedAt 2023-01-01T12:00Z `
 -User null `
 -BusinessUnits null
```

- Convert the resource to JSON
```powershell
$ClientSeedDataListItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

