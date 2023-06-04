<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_list_rule_names_by_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the rules for the specified target

### Description

Lists the rules for the specified target. You can see which of the rules
in Amazon EventBridge can invoke a specific target in your account.

### Usage

    cloudwatchevents_list_rule_names_by_target(TargetArn, EventBusName,
      NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_list_rule_names_by_target_:_TargetArn">TargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the target
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_rule_names_by_target_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus to list rules for. If you omit
this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_list_rule_names_by_target_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_rule_names_by_target_:_Limit">Limit</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleNames = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_rule_names_by_target(
      TargetArn = "string",
      EventBusName = "string",
      NextToken = "string",
      Limit = 123
    )
