<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_receipt_rule_position</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the position of the specified receipt rule in the receipt rule set

### Description

Sets the position of the specified receipt rule in the receipt rule set.

For information about managing receipt rules, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

You can execute this operation no more than once per second.

### Usage

    ses_set_receipt_rule_position(RuleSetName, RuleName, After)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_receipt_rule_position_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set that contains the
receipt rule to reposition.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_set_receipt_rule_position_:_RuleName">RuleName</code></td>
<td><p>[required] The name of the receipt rule to reposition.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_set_receipt_rule_position_:_After">After</code></td>
<td><p>The name of the receipt rule after which to place the specified
receipt rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_receipt_rule_position(
      RuleSetName = "string",
      RuleName = "string",
      After = "string"
    )

### Examples

    ## Not run: 
    # The following example sets the position of a receipt rule in a receipt
    # rule set:
    svc$set_receipt_rule_position(
      After = "PutRuleAfterThisRule",
      RuleName = "RuleToReposition",
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
