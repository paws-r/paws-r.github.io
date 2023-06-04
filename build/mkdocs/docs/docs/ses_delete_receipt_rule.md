<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_receipt_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified receipt rule

### Description

Deletes the specified receipt rule.

For information about managing receipt rules, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

You can execute this operation no more than once per second.

### Usage

    ses_delete_receipt_rule(RuleSetName, RuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_receipt_rule_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set that contains the
receipt rule to delete.</p></td>
</tr>
<tr class="even">
<td><code id="ses_delete_receipt_rule_:_RuleName">RuleName</code></td>
<td><p>[required] The name of the receipt rule to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_receipt_rule(
      RuleSetName = "string",
      RuleName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a receipt rule:
    svc$delete_receipt_rule(
      RuleName = "MyRule",
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
