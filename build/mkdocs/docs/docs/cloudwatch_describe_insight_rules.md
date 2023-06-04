<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_describe_insight_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the Contributor Insights rules in your account

### Description

Returns a list of all the Contributor Insights rules in your account.

For more information about Contributor Insights, see [Using Contributor
Insights to Analyze High-Cardinality
Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html).

### Usage

    cloudwatch_describe_insight_rules(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_describe_insight_rules_:_NextToken">NextToken</code></td>
<td><p>Include this value, if it was returned by the previous operation,
to get the next set of rules.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_insight_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one operation. If you
omit this parameter, the default of 500 is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      InsightRules = list(
        list(
          Name = "string",
          State = "string",
          Schema = "string",
          Definition = "string",
          ManagedRule = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_insight_rules(
      NextToken = "string",
      MaxResults = 123
    )
