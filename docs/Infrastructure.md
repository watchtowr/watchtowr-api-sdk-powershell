# Infrastructure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CDN** | **String** |  | [optional] 
**Cloud** | **String** |  | [optional] 
**WAF** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Infrastructure = Initialize-PSOpenAPIToolsInfrastructure  -CDN AWS CloudFront `
 -Cloud Amazon Web Services (AWS) `
 -WAF OWASP ModSecurity
```

- Convert the resource to JSON
```powershell
$Infrastructure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

