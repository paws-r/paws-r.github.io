<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_managed_insight_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a managed Contributor Insights rule for a specified Amazon Web Services resource

### Description

Creates a managed Contributor Insights rule for a specified Amazon Web
Services resource. When you enable a managed rule, you create a
Contributor Insights rule that collects data from Amazon Web Services
services. You cannot edit these rules with `put_insight_rule`. The rules
can be enabled, disabled, and deleted using `enable_insight_rules`,
`disable_insight_rules`, and `delete_insight_rules`. If a previously
created managed rule is currently disabled, a subsequent call to this
API will re-enable it. Use `list_managed_insight_rules` to describe all
available rules.

### Usage

    cloudwatch_put_managed_insight_rules(ManagedRules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_managed_insight_rules_:_ManagedRules">ManagedRules</code></td>
<td><p>[required] A list of <code>ManagedRules</code> to
enable.</p></td>
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

    svc$put_managed_insight_rules(
      ManagedRules = list(
        list(
          TemplateName = "string",
          ResourceARN = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
