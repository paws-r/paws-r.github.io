<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_enable_insight_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified Contributor Insights rules

### Description

Enables the specified Contributor Insights rules. When rules are
enabled, they immediately begin analyzing log data.

### Usage

    cloudwatch_enable_insight_rules(RuleNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_enable_insight_rules_:_RuleNames">RuleNames</code></td>
<td><p>[required] An array of the rule names to enable. If you need to
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

    svc$enable_insight_rules(
      RuleNames = list(
        "string"
      )
    )
