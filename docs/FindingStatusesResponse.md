# FindingStatusesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**String[][]**](Array.md) | Returns a single-element array containing all finding statuses. | 

## Examples

- Prepare the resource
```powershell
$FindingStatusesResponse = Initialize-WatchtowrAPIFindingStatusesResponse  -VarData [[&quot;confirmed&quot;,&quot;unconfirmed&quot;,&quot;remediated&quot;,&quot;risk-accepted&quot;,&quot;closed&quot;,&quot;asset-no-longer-tracked&quot;]]
```

- Convert the resource to JSON
```powershell
$FindingStatusesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

