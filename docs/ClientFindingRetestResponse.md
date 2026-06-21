# ClientFindingRetestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**ClientFinding**](ClientFinding.md) |  | 
**DnsConnectedRetestsTriggered** | **Decimal** | Number of additional DNS-connected findings retested alongside the requested finding (present when &#x60;includeDnsConnected&#x3D;true&#x60;). | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientFindingRetestResponse = Initialize-WatchtowrAPIClientFindingRetestResponse  -VarData null `
 -DnsConnectedRetestsTriggered 2
```

- Convert the resource to JSON
```powershell
$ClientFindingRetestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

