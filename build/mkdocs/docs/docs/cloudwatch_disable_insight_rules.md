<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_disable_insight_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the specified Contributor Insights rules

### Description

Disables the specified Contributor Insights rules. When rules are
disabled, they do not analyze log groups and do not incur costs.

### Usage

    cloudwatch_disable_insight_rules(RuleNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_disable_insight_rules_:_RuleNames">RuleNames</code></td>
<td><p>[required] An array of the rule names to disable. If you need to
find out the names of your rules, use
<code>describe_insight_rules</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Failures = list(
        list(
          FailureResource = "string",
          ExceptionType = "string",
          FailureCode = "string",
          FailureDescription = "string"
        )
      )
    )

### Request syntax

    svc$disable_insight_rules(
      RuleNames = list(
        "string"
      )
    )
