<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_receipt_rule_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified receipt rule set and all of the receipt rules it contains

### Description

Deletes the specified receipt rule set and all of the receipt rules it
contains.

The currently active rule set cannot be deleted.

For information about managing receipt rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_delete_receipt_rule_set(RuleSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_receipt_rule_set_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_receipt_rule_set(
      RuleSetName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a receipt rule set:
    svc$delete_receipt_rule_set(
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
