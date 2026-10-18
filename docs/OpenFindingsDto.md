# OpenFindingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Critical** | **Int32** | Count of critical findings | 
**High** | **Int32** | Count of high severity findings | 
**Medium** | **Int32** | Count of medium severity findings | 
**Low** | **Int32** | Count of low severity findings | 
**Info** | **Int32** | Count of informational findings | 
**Total** | **Int32** | Total count of all open findings | 

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

