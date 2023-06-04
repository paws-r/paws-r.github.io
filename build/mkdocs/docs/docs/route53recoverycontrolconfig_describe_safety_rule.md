<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_describe_safety_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a safety rule

### Description

Returns information about a safety rule.

### Usage

    route53recoverycontrolconfig_describe_safety_rule(SafetyRuleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_describe_safety_rule_:_SafetyRuleArn">SafetyRuleArn</code></td>
<td><p>[required] The ARN of the safety rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssertionRule = list(
        AssertedControls = list(
          "string"
        ),
        ControlPanelArn = "string",
        Name = "string",
        RuleConfig = list(
          Inverted = TRUE|FALSE,
          Threshold = 123,
          Type = "ATLEAST"|"AND"|"OR"
        ),
        SafetyRuleArn = "string",
        Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION",
        WaitPeriodMs = 123
      ),
      GatingRule = list(
        ControlPanelArn = "string",
        GatingControls = list(
          "string"
        ),
        Name = "string",
        RuleConfig = list(
          Inverted = TRUE|FALSE,
          Threshold = 123,
          Type = "ATLEAST"|"AND"|"OR"
        ),
        SafetyRuleArn = "string",
        Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION",
        TargetControls = list(
          "string"
        ),
        WaitPeriodMs = 123
      )
    )

### Request syntax

    svc$describe_safety_rule(
      SafetyRuleArn = "string"
    )
