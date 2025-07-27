# WatchtowrAPI.WatchtowrAPI\Api.DNSRecordAnalysisApi

All URIs are relative to *https://your-tenant-id.sg.client.watchtowr.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ListDnsRecords**](DNSRecordAnalysisApi.md#Get-ListDnsRecords) | **GET** /api/client/dns-records/list | List DNS Records


<a id="Get-ListDnsRecords"></a>
# **Get-ListDnsRecords**
> PaginatedClientDnsRecord Get-ListDnsRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Decimal]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BusinessUnitIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecordName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecordValue] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecordTypes] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

List DNS Records

List all DNS records with filtering and pagination support.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 1 # Decimal | The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. (optional)
$PageSize = 20 # Decimal | The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 20. The maximum for pageSize is 100. (optional)
$BusinessUnitIds = "1,2,3" # String | Filter assets by a list of comma separated business unit IDs that the asset is related to. (optional)
$SortBy = "createdAt" # String | Sort by field (optional) (default to "createdAt")
$SortOrder = "ASC" # String | Sort order (optional) (default to "DESC")
$AssetName = "example.com" # String | Filter by asset name (optional)
$RecordName = "example.com" # String | Filter by record name (optional)
$RecordValue = "192.168.1.1" # String | Filter by record value (optional)
$RecordTypes = "A" # String | Filter by record types (comma separated) (optional)
$StartDate = (Get-Date) # System.DateTime | Filter by start date (optional)
$EndDate = (Get-Date) # System.DateTime | Filter by end date (optional)

# List DNS Records
try {
    $Result = Get-ListDnsRecords -Page $Page -PageSize $PageSize -BusinessUnitIds $BusinessUnitIds -SortBy $SortBy -SortOrder $SortOrder -AssetName $AssetName -RecordName $RecordName -RecordValue $RecordValue -RecordTypes $RecordTypes -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Get-ListDnsRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Decimal**| The page number for paginated results. If the page field is not provided in the request, it defaults to 1, which corresponds to the first page of results. | [optional] 
 **PageSize** | **Decimal**| The number of items to be included on each page of paginated results. If the pageSize field is not specified, it defaults to 20. The maximum for pageSize is 100. | [optional] 
 **BusinessUnitIds** | **String**| Filter assets by a list of comma separated business unit IDs that the asset is related to. | [optional] 
 **SortBy** | **String**| Sort by field | [optional] [default to &quot;createdAt&quot;]
 **SortOrder** | **String**| Sort order | [optional] [default to &quot;DESC&quot;]
 **AssetName** | **String**| Filter by asset name | [optional] 
 **RecordName** | **String**| Filter by record name | [optional] 
 **RecordValue** | **String**| Filter by record value | [optional] 
 **RecordTypes** | **String**| Filter by record types (comma separated) | [optional] 
 **StartDate** | **System.DateTime**| Filter by start date | [optional] 
 **EndDate** | **System.DateTime**| Filter by end date | [optional] 

### Return type

[**PaginatedClientDnsRecord**](PaginatedClientDnsRecord.md) (PSCustomObject)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

