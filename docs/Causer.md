# Causer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Decimal** | ID | 
**Name** | [**SystemCollectionsHashtable**](.md) | User name | 

## Examples

- Prepare the resource
```powershell
$Causer = Initialize-PSOpenAPIToolsCauser  -Id 1 `
 -Name Example
```

- Convert the resource to JSON
```powershell
$Causer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

