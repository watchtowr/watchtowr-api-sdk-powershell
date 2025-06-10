# ServiceInformationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Response** | **String** | Response | 
**Certificate** | [**ServiceInformationCertificate**](ServiceInformationCertificate.md) |  | 
**Asset** | [**ServiceInformationAsset**](ServiceInformationAsset.md) |  | 

## Examples

- Prepare the resource
```powershell
$ServiceInformationResponse = Initialize-PSOpenAPIToolsServiceInformationResponse  -Id 1 `
 -Response example `
 -Certificate null `
 -Asset null
```

- Convert the resource to JSON
```powershell
$ServiceInformationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

