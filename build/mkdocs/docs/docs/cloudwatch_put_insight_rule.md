<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_insight_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Contributor Insights rule

### Description

Creates a Contributor Insights rule. Rules evaluate log events in a
CloudWatch Logs log group, enabling you to find contributor data for the
log events in that log group. For more information, see [Using
Contributor Insights to Analyze High-Cardinality
Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html).

If you create a rule, delete it, and then re-create it with the same
name, historical data from the first time the rule was created might not
be available.

### Usage

    cloudwatch_put_insight_rule(RuleName, RuleState, RuleDefinition, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_insight_rule_:_RuleName">RuleName</code></td>
<td><p>[required] A unique name for the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_insight_rule_:_RuleState">RuleState</code></td>
<td><p>The state of the rule. Valid values are ENABLED and
DISABLED.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_insight_rule_:_RuleDefinition">RuleDefinition</code></td>
<td><p>[required] The definition of the rule, as a JSON object. For
details on the valid syntax, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html">Contributor
Insights Rule Syntax</a>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_put_insight_rule_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the Contributor
Insights rule. You can associate as many as 50 tags with a rule.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions, by granting a user permission
to access or change only the resources that have certain tag values.</p>
<p>To be able to associate tags with a rule, you must have the
<code>cloudwatch:TagResource</code> permission in addition to the
<code>cloudwatch:PutInsightRule</code> permission.</p>
<p>If you are using this operation to update an existing Contributor
Insights rule, any tags you specify in this parameter are ignored. To
change the tags of an existing rule, use
<code>tag_resource</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_insight_rule(
      RuleName = "string",
      RuleState = "string",
      RuleDefinition = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
