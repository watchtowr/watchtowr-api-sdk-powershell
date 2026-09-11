# ActiveDefenseWafRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** |  | [optional] 
**Template** | **String** | Deployable template body (AWS CloudFormation YAML or Azure ARM JSON). | [optional] 
**Description** | **String** |  | [optional] 
**Expression** | **String** |  | [optional] 
**VarFilter** | **String** |  | [optional] 
**Vcl** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Tag** | **String[]** |  | [optional] 
**Operation** | **String** |  | [optional] 
**Structured** | **Boolean** |  | [optional] 
**Conditions** | [**ActiveDefenseWafRuleCondition[]**](ActiveDefenseWafRuleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDefenseWafRule = Initialize-WatchtowrAPIActiveDefenseWafRule  -Type cloudflare `
 -Name apache_pinot_config `
 -Template Description: WAFv2 rules for apache-pinot-config
Resources: ... `
 -Description WAF rule for apache-pinot-config: GET /appconfigs `
 -Expression http.request.method &#x3D;&#x3D; &quot;GET&quot; &amp;&amp; http.request.uri.path &#x3D;&#x3D; &quot;/appconfigs&quot; `
 -VarFilter Method &#x3D;&#x3D; GET &amp; URL &#x3D;&#x3D; &quot;/appconfigs&quot; `
 -Vcl if (req.method &#x3D;&#x3D; &quot;GET&quot;) { error 403 &quot;Forbidden&quot;; } `
 -Action block `
 -Tag [&quot;watchTowr&quot;,&quot;apache-pinot-config&quot;] `
 -Operation AND `
 -Structured true `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$ActiveDefenseWafRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

