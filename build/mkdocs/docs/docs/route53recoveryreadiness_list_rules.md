<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_list_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all readiness rules, or lists the readiness rules for a specific resource type

### Description

Lists all readiness rules, or lists the readiness rules for a specific
resource type.

### Usage

    route53recoveryreadiness_list_rules(MaxResults, NextToken, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_list_rules_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_list_rules_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_list_rules_:_ResourceType">ResourceType</code></td>
<td><p>The resource type that a readiness rule applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Rules = list(
        list(
          ResourceType = "string",
          RuleDescription = "string",
          RuleId = "string"
        )
      )
    )

### Request syntax

    svc$list_rules(
      MaxResults = 123,
      NextToken = "string",
      ResourceType = "string"
    )
