# SetCriticalityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Criticality** | **String** | The criticality level to assign to the asset. Accepted values are &#39;High&#39;, &#39;Medium&#39;, &#39;Low&#39;, &#39;Unknown&#39;. | 

## Examples

- Prepare the resource
```powershell
$SetCriticalityDto = Initialize-WatchtowrAPISetCriticalityDto  -Criticality High
```

- Convert the resource to JSON
```powershell
$SetCriticalityDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

