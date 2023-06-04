<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_custom_rule_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the policy definition containing the logic for your Config Custom Policy rule

### Description

Returns the policy definition containing the logic for your Config
Custom Policy rule.

### Usage

    configservice_get_custom_rule_policy(ConfigRuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_custom_rule_policy_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>The name of your Config Custom Policy rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyText = "string"
    )

### Request syntax

    svc$get_custom_rule_policy(
      ConfigRuleName = "string"
    )
