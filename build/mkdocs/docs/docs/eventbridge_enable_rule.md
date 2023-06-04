<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_enable_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified rule

### Description

Enables the specified rule. If the rule does not exist, the operation
fails.

When you enable a rule, incoming events might not immediately start
matching to a newly enabled rule. Allow a short period of time for
changes to take effect.

### Usage

    eventbridge_enable_rule(Name, EventBusName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_enable_rule_:_Name">Name</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_enable_rule_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_rule(
      Name = "string",
      EventBusName = "string"
    )
