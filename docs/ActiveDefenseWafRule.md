# ActiveDefenseWafRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ActionCategory** | **String** | Action category (mod_security). | [optional] 
**ActionType** | **String** | Action type (oci_waf). | [optional] 
**AttackType** | **String** | Attack classification (f5_bigip_advanced_waf). | [optional] 
**Condition** | **String** | Single-condition expression (oci_waf, mod_security). | [optional] 
**Enabled** | **Boolean** | Whether the rule is enabled (imperva). | [optional] 
**GroupOperator** | **String** | Operator joining conditions. | [optional] 
**Message** | **String** | Rule message. | [optional] 
**Msg** | **String** | Short rule message (mod_security &#x60;msg&#x60;). | [optional] 
**ResponseCode** | **Decimal** | HTTP status returned (oci_waf). | [optional] 
**Risk** | **Decimal** | Risk score (f5_bigip_advanced_waf). | [optional] 
**Rule** | **String** | Raw rule body (snort, yara, sigma). | [optional] 
**Secrule** | **String** | ModSecurity SecRule body. | [optional] 
**Severity** | **String** | Severity (fortiweb, imperva). | [optional] 
**Signature** | **String** | Signature body (f5_bigip_advanced_waf). | [optional] 
**SoftwareVersion** | **String** | Target software version. | [optional] 
**Strategies** | [**System.Collections.Hashtable[]**](Map.md) | Provider-specific match strategies (tencent_cloud_waf). | [optional] 
**MatchCriteria** | [**System.Collections.Hashtable[]**](Map.md) | Provider-specific match criteria (imperva_waf_gateway). | [optional] 
**DisplayResponsePage** | **Boolean** | Imperva: show a response page. | [optional] 
**OneAlertPerSession** | **Boolean** | Imperva: alert once per session. | [optional] 
**Preview** | **Boolean** | Whether the rule is a preview/monitor-only variant (google_cloud_armor). | [optional] 
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
 -ActionCategory block `
 -ActionType RETURN_HTTP_RESPONSE `
 -AttackType Other Application Attacks `
 -Condition SecRule REQUEST_METHOD &quot;@streq GET&quot; `
 -Enabled true `
 -GroupOperator all `
 -Message WAF rule for CVE-2025-5777 `
 -Msg WT-304155: WAF rule `
 -ResponseCode 403 `
 -Risk 2 `
 -Rule alert tcp $HOME_NET any -&gt; $EXTERNAL_NET any `
 -Secrule SecRule REQUEST_METHOD &quot;@streq GET&quot; `
 -Severity high `
 -Signature msg:&quot;WT-304155 WAF rule&quot; `
 -SoftwareVersion 15.1.0 `
 -Strategies null `
 -MatchCriteria null `
 -DisplayResponsePage false `
 -OneAlertPerSession false `
 -Preview true `
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

