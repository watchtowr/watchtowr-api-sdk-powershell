# Retest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetestRemaining** | **Decimal** | The number of remaining test cases  | [optional] 
**CurrentRetest** | [**FindingRetestResponseDto**](FindingRetestResponseDto.md) |  | 

## Examples

- Prepare the resource
```powershell
$Retest = Initialize-WatchtowrAPIRetest  -RetestRemaining 1 `
 -CurrentRetest null
```

- Convert the resource to JSON
```powershell
$Retest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

