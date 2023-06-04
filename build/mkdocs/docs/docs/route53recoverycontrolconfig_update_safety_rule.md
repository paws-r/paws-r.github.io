<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_update_safety_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a safety rule (an assertion rule or gating rule)

### Description

Update a safety rule (an assertion rule or gating rule). You can only
update the name and the waiting period for a safety rule. To make other
updates, delete the safety rule and create a new one.

### Usage

    route53recoverycontrolconfig_update_safety_rule(AssertionRuleUpdate,
      GatingRuleUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_update_safety_rule_:_AssertionRuleUpdate">AssertionRuleUpdate</code></td>
<td><p>The assertion rule to update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_update_safety_rule_:_GatingRuleUpdate">GatingRuleUpdate</code></td>
<td><p>The gating rule to update.</p></td>
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

    svc$update_safety_rule(
      AssertionRuleUpdate = list(
        Name = "string",
        SafetyRuleArn = "string",
        WaitPeriodMs = 123
      ),
      GatingRuleUpdate = list(
        Name = "string",
        SafetyRuleArn = "string",
        WaitPeriodMs = 123
      )
    )
