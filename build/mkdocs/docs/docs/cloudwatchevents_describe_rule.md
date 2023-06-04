<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_describe_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified rule

### Description

Describes the specified rule.

DescribeRule does not list the targets of a rule. To see the targets
associated with a rule, use `list_targets_by_rule`.

### Usage

    cloudwatchevents_describe_rule(Name, EventBusName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_describe_rule_:_Name">Name</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_describe_rule_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      EventPattern = "string",
      ScheduleExpression = "string",
      State = "ENABLED"|"DISABLED",
      Description = "string",
      RoleArn = "string",
      ManagedBy = "string",
      EventBusName = "string",
      CreatedBy = "string"
    )

### Request syntax

    svc$describe_rule(
      Name = "string",
      EventBusName = "string"
    )
