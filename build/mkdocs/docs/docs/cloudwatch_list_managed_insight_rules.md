<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_list_managed_insight_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list that contains the number of managed Contributor Insights rules in your account

### Description

Returns a list that contains the number of managed Contributor Insights
rules in your account.

### Usage

    cloudwatch_list_managed_insight_rules(ResourceARN, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_list_managed_insight_rules_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of an Amazon Web Services resource that has
managed Contributor Insights rules.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_list_managed_insight_rules_:_NextToken">NextToken</code></td>
<td><p>Include this value to get the next set of rules if the value was
returned by the previous operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_list_managed_insight_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one operation. If you
omit this parameter, the default number is used. The default number is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagedRules = list(
        list(
          TemplateName = "string",
          ResourceARN = "string",
          RuleState = list(
            RuleName = "string",
            State = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_managed_insight_rules(
      ResourceARN = "string",
      NextToken = "string",
      MaxResults = 123
    )
