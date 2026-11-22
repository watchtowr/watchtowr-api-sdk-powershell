# NormalizedWhoisRegistrarAbuse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **String** | Abuse contact email of the registrar. | 
**Phone** | **String** | Abuse contact phone of the registrar. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisRegistrarAbuse = Initialize-WatchtowrAPINormalizedWhoisRegistrarAbuse  -Email abuse@registrar.example `
 -Phone +1.5555550100
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisRegistrarAbuse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

