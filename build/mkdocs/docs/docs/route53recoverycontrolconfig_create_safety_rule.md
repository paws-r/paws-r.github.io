<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_create_safety_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a safety rule in a control panel

### Description

Creates a safety rule in a control panel. Safety rules let you add
safeguards around changing routing control states, and for enabling and
disabling routing controls, to help prevent unexpected outcomes.

There are two types of safety rules: assertion rules and gating rules.

Assertion rule: An assertion rule enforces that, when you change a
routing control state, that a certain criteria is met. For example, the
criteria might be that at least one routing control state is On after
the transaction so that traffic continues to flow to at least one cell
for the application. This ensures that you avoid a fail-open scenario.

Gating rule: A gating rule lets you configure a gating routing control
as an overall "on/off" switch for a group of routing controls. Or, you
can configure more complex gating scenarios, for example by configuring
multiple gating routing controls.

For more information, see [Safety
rules](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

### Usage

    route53recoverycontrolconfig_create_safety_rule(AssertionRule,
      ClientToken, GatingRule, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_safety_rule_:_AssertionRule">AssertionRule</code></td>
<td><p>The assertion rule requested.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_safety_rule_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive string of up to 64 ASCII characters. To
make an idempotent API request with an action, specify a client token in
the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_safety_rule_:_GatingRule">GatingRule</code></td>
<td><p>The gating rule requested.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_safety_rule_:_Tags">Tags</code></td>
<td><p>The tags associated with the safety rule.</p></td>
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

    svc$create_safety_rule(
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
        WaitPeriodMs = 123
      ),
      ClientToken = "string",
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
        TargetControls = list(
          "string"
        ),
        WaitPeriodMs = 123
      ),
      Tags = list(
        "string"
      )
    )
