# ClientIp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Source** | **String** |  | 
**Status** | **String** |  | 
**CreatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**UpdatedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**DeletedAt** | [**DatetimeDate**](DatetimeDate.md) |  | 
**Id** | **Decimal** |  | 
**Name** | **String** |  | 
**BusinessUnits** | [**ClientBusinessUnit[]**](ClientBusinessUnit.md) |  | 
**Country** | **String** |  | 
**Live** | **Boolean** |  | 
**DnsRecords** | [**ClientIpDetailDnsRecords**](ClientIpDetailDnsRecords.md) |  | 
**Metadata** | [**SystemCollectionsHashtable**](.md) |  | 
**CustomProperties** | [**ClientCustomProperty[]**](ClientCustomProperty.md) |  | 
**Criticality** | **String** |  | 
**Infrastructure** | [**Infrastructure**](Infrastructure.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientIp = Initialize-PSOpenAPIToolsClientIp  -Type ip `
 -Source module-continuousassurance-controller `
 -Status verified `
 -CreatedAt 2022-02-13T02:10:00.000000Z `
 -UpdatedAt 2022-02-13T02:10:00.000000Z `
 -DeletedAt 2022-02-13T02:10:00.000000Z `
 -Id 123 `
 -Name 123.123.123.123 `
 -BusinessUnits null `
 -Country SG `
 -Live true `
 -DnsRecords null `
 -Metadata {&quot;tags&quot;:[{&quot;key&quot;:&quot;Name&quot;,&quot;value&quot;:&quot;MyEC2Instance&quot;},{&quot;key&quot;:&quot;Environment&quot;,&quot;value&quot;:&quot;Production&quot;}],&quot;amiId&quot;:&quot;ami-0abcdef1234567890&quot;,&quot;state&quot;:{&quot;code&quot;:16,&quot;name&quot;:&quot;running&quot;},&quot;vpcId&quot;:&quot;vpc-1a2b3c4d&quot;,&quot;keyName&quot;:&quot;my-key-pair&quot;,&quot;subnetId&quot;:&quot;subnet-6e7f829e&quot;,&quot;cpuOptions&quot;:{&quot;coreCount&quot;:1,&quot;threadsPerCore&quot;:1},&quot;hypervisor&quot;:&quot;xen&quot;,&quot;instanceId&quot;:&quot;i-1234567890abcdef0&quot;,&quot;launchTime&quot;:&quot;2024-07-10T10:20:30Z&quot;,&quot;instanceType&quot;:&quot;t2.micro&quot;,&quot;rootDeviceName&quot;:&quot;/dev/sda1&quot;,&quot;rootDeviceType&quot;:&quot;ebs&quot;,&quot;securityGroups&quot;:[{&quot;groupId&quot;:&quot;sg-1a2b3c4d&quot;,&quot;groupName&quot;:&quot;default&quot;}],&quot;publicIpAddress&quot;:&quot;123.123.123.123&quot;,&quot;availabilityZone&quot;:&quot;us-west-2a&quot;,&quot;privateIpAddress&quot;:&quot;456.456.456.456&quot;,&quot;networkInterfaces&quot;:[{&quot;vpcId&quot;:&quot;vpc-1a2b3c4d&quot;,&quot;groups&quot;:[{&quot;groupId&quot;:&quot;sg-1a2b3c4d&quot;,&quot;groupName&quot;:&quot;default&quot;}],&quot;ownerId&quot;:&quot;123456789012&quot;,&quot;subnetId&quot;:&quot;subnet-6e7f829e&quot;,&quot;attachment&quot;:{&quot;status&quot;:&quot;attached&quot;,&quot;attachTime&quot;:&quot;2024-07-10T10:20:30Z&quot;,&quot;deviceIndex&quot;:0,&quot;attachmentId&quot;:&quot;eni-attach-1a2b3c4d&quot;,&quot;deleteOnTermination&quot;:true},&quot;macAddress&quot;:&quot;02:7f:42:3b:c4:57&quot;,&quot;description&quot;:&quot;Primary network interface&quot;,&quot;privateIpAddress&quot;:&quot;456.456.456.456&quot;,&quot;networkInterfaceId&quot;:&quot;eni-1a2b3c4d&quot;}],&quot;iamInstanceProfile&quot;:{&quot;id&quot;:&quot;AIPAI1234567890abcdef&quot;,&quot;arn&quot;:&quot;arn:aws:iam::123456789012:instance-profile/my-iam-role&quot;},&quot;virtualizationType&quot;:&quot;hvm&quot;,&quot;blockDeviceMappings&quot;:[{&quot;ebs&quot;:{&quot;status&quot;:&quot;attached&quot;,&quot;volumeId&quot;:&quot;vol-049df61146c4d7901&quot;,&quot;attachTime&quot;:&quot;2024-07-10T10:21:00Z&quot;,&quot;deleteOnTermination&quot;:true},&quot;deviceName&quot;:&quot;/dev/sda1&quot;}]} `
 -CustomProperties [{&quot;id&quot;:10,&quot;key&quot;:&quot;Severity&quot;,&quot;value&quot;:&quot;normal&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;ip&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;},{&quot;id&quot;:11,&quot;key&quot;:&quot;Vulnerability&quot;,&quot;value&quot;:&quot;low risk&quot;,&quot;isPreset&quot;:false,&quot;modelType&quot;:&quot;ip&quot;,&quot;modelId&quot;:209,&quot;createdAt&quot;:&quot;2024-09-24T02:37:27.000Z&quot;,&quot;updatedAt&quot;:&quot;2024-09-24T02:38:35.000Z&quot;}] `
 -Criticality Medium `
 -Infrastructure null
```

- Convert the resource to JSON
```powershell
$ClientIp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

