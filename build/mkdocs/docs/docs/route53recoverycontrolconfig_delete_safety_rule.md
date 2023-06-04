<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_delete_safety_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a safety rule

### Description

Deletes a safety rule.

/\\

### Usage

    route53recoverycontrolconfig_delete_safety_rule(SafetyRuleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_delete_safety_rule_:_SafetyRuleArn">SafetyRuleArn</code></td>
<td><p>[required] The ARN of the safety rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_safety_rule(
      SafetyRuleArn = "string"
    )
