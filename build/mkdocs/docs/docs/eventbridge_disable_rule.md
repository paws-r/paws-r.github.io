<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_disable_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the specified rule

### Description

Disables the specified rule. A disabled rule won't match any events, and
won't self-trigger if it has a schedule expression.

When you disable a rule, incoming events might continue to match to the
disabled rule. Allow a short period of time for changes to take effect.

### Usage

    eventbridge_disable_rule(Name, EventBusName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_disable_rule_:_Name">Name</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_disable_rule_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_rule(
      Name = "string",
      EventBusName = "string"
    )
