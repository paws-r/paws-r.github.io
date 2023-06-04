<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_set_active_receipt_rule_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the specified receipt rule set as the active receipt rule set

### Description

Sets the specified receipt rule set as the active receipt rule set.

To disable your email-receiving through Amazon SES completely, you can
call this API with RuleSetName set to null.

For information about managing receipt rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_set_active_receipt_rule_set(RuleSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_set_active_receipt_rule_set_:_RuleSetName">RuleSetName</code></td>
<td><p>The name of the receipt rule set to make active. Setting this
value to null disables all email receiving.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_active_receipt_rule_set(
      RuleSetName = "string"
    )

### Examples

    ## Not run: 
    # The following example sets the active receipt rule set:
    svc$set_active_receipt_rule_set(
      RuleSetName = "RuleSetToActivate"
    )

    ## End(Not run)
