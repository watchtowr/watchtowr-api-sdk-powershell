# IpWhoisNet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cidr** | **String** | CIDR of the network block. | [optional] 
**Name** | **String** | Network name registered for the block (NetName or netname). | [optional] 
**Handle** | **String** | Registry handle of the network block. | [optional] 
**Range** | **String** | First and last address of the network block. | [optional] 
**Description** | **String** | Organization name or description lines of the block, joined with newlines. | [optional] 
**Country** | **String** | Country code. | [optional] 
**State** | **String** | State or province. | [optional] 
**City** | **String** | City. | [optional] 
**Address** | **String** | Street address; may span several lines. | [optional] 
**PostalCode** | **String** | Postal code. | [optional] 
**Emails** | **String[]** | Contact emails listed for the block. | [optional] 
**Created** | **String** | Registration date, as the registry reports it. | [optional] 
**Updated** | **String** | Last update date, as the registry reports it. | [optional] 

## Examples

- Prepare the resource
```powershell
$IpWhoisNet = Initialize-WatchtowrAPIIpWhoisNet  -Cidr 45.33.0.0/17 `
 -Name LINODE-US `
 -Handle NET-45-33-0-0-1 `
 -Range 45.33.0.0 - 45.33.127.255 `
 -Description Akamai Technologies, Inc. `
 -Country US `
 -State MA `
 -City Cambridge `
 -Address 145 Broadway `
 -PostalCode 02142 `
 -Emails [&quot;ip-admin@akamai.com&quot;,&quot;abuse@akamai.com&quot;] `
 -Created 2015-03-20 `
 -Updated 2023-09-18
```

- Convert the resource to JSON
```powershell
$IpWhoisNet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

