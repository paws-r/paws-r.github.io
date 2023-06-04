<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_reorder_receipt_rule_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reorders the receipt rules within a receipt rule set

### Description

Reorders the receipt rules within a receipt rule set.

All of the rules in the rule set must be represented in this request.
That is, this API will return an error if the reorder request doesn't
explicitly position all of the rules.

For information about managing receipt rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_reorder_receipt_rule_set(RuleSetName, RuleNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_reorder_receipt_rule_set_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set to reorder.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_reorder_receipt_rule_set_:_RuleNames">RuleNames</code></td>
<td><p>[required] A list of the specified receipt rule set's receipt
rules in the order that you want to put them.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reorder_receipt_rule_set(
      RuleSetName = "string",
      RuleNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example reorders the receipt rules within a receipt rule
    # set:
    svc$reorder_receipt_rule_set(
      RuleNames = list(
        "MyRule",
        "MyOtherRule"
      ),
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
