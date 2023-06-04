<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_describe_rule_group_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## High-level information about a rule group, returned by operations like create and describe

### Description

High-level information about a rule group, returned by operations like
create and describe. You can use the information provided in the
metadata to retrieve and manage a rule group. You can retrieve all
objects for a rule group by calling `describe_rule_group`.

### Usage

    networkfirewall_describe_rule_group_metadata(RuleGroupName,
      RuleGroupArn, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_describe_rule_group_metadata_:_RuleGroupName">RuleGroupName</code></td>
<td><p>The descriptive name of the rule group. You can't change the name
of a rule group after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_describe_rule_group_metadata_:_RuleGroupArn">RuleGroupArn</code></td>
<td><p>The descriptive name of the rule group. You can't change the name
of a rule group after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_describe_rule_group_metadata_:_Type">Type</code></td>
<td><p>Indicates whether the rule group is stateless or stateful. If the
rule group is stateless, it contains stateless rules. If it is stateful,
it contains stateful rules.</p>
<p>This setting is required for requests that do not include the
<code>RuleGroupARN</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleGroupArn = "string",
      RuleGroupName = "string",
      Description = "string",
      Type = "STATELESS"|"STATEFUL",
      Capacity = 123,
      StatefulRuleOptions = list(
        RuleOrder = "DEFAULT_ACTION_ORDER"|"STRICT_ORDER"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_rule_group_metadata(
      RuleGroupName = "string",
      RuleGroupArn = "string",
      Type = "STATELESS"|"STATEFUL"
    )
