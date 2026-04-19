# CapabilitySearchData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hunts** | [**CapabilitySearchHuntItem[]**](CapabilitySearchHuntItem.md) |  | 
**TtpLibrary** | [**TtpLibraryItem[]**](TtpLibraryItem.md) |  | 

## Examples

- Prepare the resource
```powershell
$CapabilitySearchData = Initialize-WatchtowrAPICapabilitySearchData  -Hunts null `
 -TtpLibrary null
```

- Convert the resource to JSON
```powershell
$CapabilitySearchData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

