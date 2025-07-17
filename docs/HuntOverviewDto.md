# HuntOverviewDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalHuntsExecuted** | **Decimal** | Total number of rapid reaction hunts executed | 
**TotalUnresolvedHunts** | **Decimal** | Total number of unresolved hunts | 
**LatestExecutedHunts** | [**LatestExecutedHuntDto[]**](LatestExecutedHuntDto.md) | Array of latest executed hunts | 

## Examples

- Prepare the resource
```powershell
$HuntOverviewDto = Initialize-WatchtowrAPIHuntOverviewDto  -TotalHuntsExecuted 25 `
 -TotalUnresolvedHunts 3 `
 -LatestExecutedHunts null
```

- Convert the resource to JSON
```powershell
$HuntOverviewDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

