# ClientIntegrationItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IntegrationType** | **String** | Integration type. Valid values: aws, azure, googlecloud, cloudflare, alibabacloud, prismacloud, prismacloudapigee, huaweicloud, tencentcloud, wiz, servicenowcmdb, akamaiedge, armiscentrix, qualysvmdr, tenable | 
**IntegrationId** | **Decimal** | Integration ID | 

## Examples

- Prepare the resource
```powershell
$ClientIntegrationItemDto = Initialize-WatchtowrAPIClientIntegrationItemDto  -IntegrationType aws `
 -IntegrationId 1
```

- Convert the resource to JSON
```powershell
$ClientIntegrationItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

