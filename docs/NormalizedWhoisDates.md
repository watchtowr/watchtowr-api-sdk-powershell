# NormalizedWhoisDates
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RegisteredAt** | **System.DateTime** | Registration date. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**UpdatedAt** | **System.DateTime** | Last update date. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**ExpiresAt** | **System.DateTime** | Expiration date at the registry. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**RegistrarExpiresAt** | **System.DateTime** | Expiration date at the registrar. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 
**RegistryUpdatedAt** | **System.DateTime** | Last update of the registry database. ISO 8601 UTC with a &#x60;Z&#x60; suffix. | 

## Examples

- Prepare the resource
```powershell
$NormalizedWhoisDates = Initialize-WatchtowrAPINormalizedWhoisDates  -RegisteredAt 2005-11-27T02:11:28Z `
 -UpdatedAt 2005-11-27T02:11:28Z `
 -ExpiresAt 2005-11-27T02:11:28Z `
 -RegistrarExpiresAt 2005-11-27T02:11:28Z `
 -RegistryUpdatedAt 2005-11-27T02:11:28Z
```

- Convert the resource to JSON
```powershell
$NormalizedWhoisDates | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

