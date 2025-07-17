# PSOpenAPITools.PSOpenAPITools\Api.CertificatesApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-CertificateDetails**](CertificatesApi.md#Get-CertificateDetails) | **GET** /api/client/certificates/show/{id} | Get Certificate Details
[**Get-ListCertificates**](CertificatesApi.md#Get-ListCertificates) | **GET** /api/client/certificates/list | List Certificates


<a id="Get-CertificateDetails"></a>
# **Get-CertificateDetails**
> ClientServiceInformationResponseData Get-CertificateDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <Decimal><br>

Get Certificate Details

Get the details of a specific TLS/SSL certificate.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = 8.14 # Decimal | The asset ID of the certificate to retrieve.

# Get Certificate Details
try {
    $Result = Get-CertificateDetails -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CertificateDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **Decimal**| The asset ID of the certificate to retrieve. | 

### Return type

[**ClientServiceInformationResponseData**](ClientServiceInformationResponseData.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ListCertificates"></a>
# **Get-ListCertificates**
> PaginatedServiceInformationResponse Get-ListCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatedTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotAfterFrom] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotAfterTo] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubjectCommonNameSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubjectAltNameSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubjectOrganisationSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SubjectCountries] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetNameSearch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>

List Certificates

List all discovered TLS/SSL certificate assets, ordered by discovery date.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 10 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. (optional)
$CreatedFrom = (Get-Date) # System.DateTime | Filter certificates created after a given date and time. (optional)
$CreatedTo = (Get-Date) # System.DateTime | Filter certificates created before a given date and time. (optional)
$UpdatedFrom = (Get-Date) # System.DateTime | Filter certificates updated after a given date and time. (optional)
$UpdatedTo = (Get-Date) # System.DateTime | Filter certificates updated before a given date and time. (optional)
$NotAfterFrom = (Get-Date) # System.DateTime | Filter certificates that do not expire after a given date and time. (optional)
$NotAfterTo = (Get-Date) # System.DateTime | Filter certificates that do not expire before a given date and time. (optional)
$SubjectCommonNameSearch = "example.com" # String | Search certificates by Subject Common Name. (optional)
$SubjectAltNameSearch = "example.com" # String | Search certificates by Subject Alt Name. (optional)
$SubjectOrganisationSearch = "example" # String | Search by subject organization. (optional)
$SubjectCountries = "MySubjectCountries" # String[] | Filter certificates by a list of comma separated subject countries that they're related to. (optional)
$AssetNameSearch = "example.watchTowr.com" # String | Search Certificates by the name of the associated asset. (optional)
$Statuses = "Expired,Expiring Within 30 Days,Valid" # String | Filter certificates by a list of comma separated statuses that they're tagged with. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter certificates by a list of comma separated business unit IDs they're related to. (optional)

# List Certificates
try {
    $Result = Get-ListCertificates -Page $Page -PageSize $PageSize -CreatedFrom $CreatedFrom -CreatedTo $CreatedTo -UpdatedFrom $UpdatedFrom -UpdatedTo $UpdatedTo -NotAfterFrom $NotAfterFrom -NotAfterTo $NotAfterTo -SubjectCommonNameSearch $SubjectCommonNameSearch -SubjectAltNameSearch $SubjectAltNameSearch -SubjectOrganisationSearch $SubjectOrganisationSearch -SubjectCountries $SubjectCountries -AssetNameSearch $AssetNameSearch -Statuses $Statuses -BusinessUnitIds $BusinessUnitIds
} catch {
    Write-Host ("Exception occurred when calling Get-ListCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 10. The maximum for pageSize is 30. | [optional] 
 **CreatedFrom** | **System.DateTime**| Filter certificates created after a given date and time. | [optional] 
 **CreatedTo** | **System.DateTime**| Filter certificates created before a given date and time. | [optional] 
 **UpdatedFrom** | **System.DateTime**| Filter certificates updated after a given date and time. | [optional] 
 **UpdatedTo** | **System.DateTime**| Filter certificates updated before a given date and time. | [optional] 
 **NotAfterFrom** | **System.DateTime**| Filter certificates that do not expire after a given date and time. | [optional] 
 **NotAfterTo** | **System.DateTime**| Filter certificates that do not expire before a given date and time. | [optional] 
 **SubjectCommonNameSearch** | **String**| Search certificates by Subject Common Name. | [optional] 
 **SubjectAltNameSearch** | **String**| Search certificates by Subject Alt Name. | [optional] 
 **SubjectOrganisationSearch** | **String**| Search by subject organization. | [optional] 
 **SubjectCountries** | [**String[]**](String.md)| Filter certificates by a list of comma separated subject countries that they&#39;re related to. | [optional] 
 **AssetNameSearch** | **String**| Search Certificates by the name of the associated asset. | [optional] 
 **Statuses** | **String**| Filter certificates by a list of comma separated statuses that they&#39;re tagged with. | [optional] 
 **BusinessUnitIds** | **String**| Filter certificates by a list of comma separated business unit IDs they&#39;re related to. | [optional] 

### Return type

[**PaginatedServiceInformationResponse**](PaginatedServiceInformationResponse.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

