<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your Amazon EventBridge rules

### Description

Lists your Amazon EventBridge rules. You can either list all the rules
or you can provide a prefix to match to the rule names.

ListRules does not list the targets of a rule. To see the targets
associated with a rule, use `list_targets_by_rule`.

### Usage

    eventbridge_list_rules(NamePrefix, EventBusName, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_rules_:_NamePrefix">NamePrefix</code></td>
<td><p>The prefix matching the rule name.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_rules_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus to list the rules for. If you
omit this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_list_rules_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_list_rules_:_Limit">Limit</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rules = list(
        list(
          Name = "string",
          Arn = "string",
          EventPattern = "string",
          State = "ENABLED"|"DISABLED",
          Description = "string",
          ScheduleExpression = "string",
          RoleArn = "string",
          ManagedBy = "string",
          EventBusName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_rules(
      NamePrefix = "string",
      EventBusName = "string",
      NextToken = "string",
      Limit = 123
    )
