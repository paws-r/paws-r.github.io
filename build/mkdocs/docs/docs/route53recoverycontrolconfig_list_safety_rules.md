<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_list_safety_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel

### Description

List the safety rules (the assertion rules and gating rules) that you've
defined for the routing controls in a control panel.

### Usage

    route53recoverycontrolconfig_list_safety_rules(ControlPanelArn,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_safety_rules_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the control
panel.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_list_safety_rules_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_safety_rules_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      SafetyRules = list(
        list(
          ASSERTION = list(
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
          GATING = list(
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
      )
    )

### Request syntax

    svc$list_safety_rules(
      ControlPanelArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
