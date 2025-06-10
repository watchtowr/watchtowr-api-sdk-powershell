# HostnameBusinessUnitIDsDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BusinessUnitIds** | **String[]** | List of business unit IDs to assign the asset to. | 
**CascadeSubdomain** | **Boolean** | Cascade business units to domain&#39;s subdomains | 
**CascadeIp** | **Boolean** | Cascade business units to domain&#39;s ipaddresses | 

## Examples

- Prepare the resource
```powershell
$HostnameBusinessUnitIDsDTO = Initialize-PSOpenAPIToolsHostnameBusinessUnitIDsDTO  -BusinessUnitIds [1,2,3] `
 -CascadeSubdomain null `
 -CascadeIp null
```

- Convert the resource to JSON
```powershell
$HostnameBusinessUnitIDsDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

