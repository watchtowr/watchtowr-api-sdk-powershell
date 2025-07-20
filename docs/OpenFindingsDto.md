# OpenFindingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Critical** | **Decimal** | Count of critical findings | 
**High** | **Decimal** | Count of high severity findings | 
**Medium** | **Decimal** | Count of medium severity findings | 
**Low** | **Decimal** | Count of low severity findings | 
**Info** | **Decimal** | Count of informational findings | 
**Total** | **Decimal** | Total count of all open findings | 

## Examples

- Prepare the resource
```powershell
$OpenFindingsDto = Initialize-WatchtowrAPIOpenFindingsDto  -Critical 5 `
 -High 12 `
 -Medium 18 `
 -Low 8 `
 -Info 2 `
 -Total 45
```

- Convert the resource to JSON
```powershell
$OpenFindingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

