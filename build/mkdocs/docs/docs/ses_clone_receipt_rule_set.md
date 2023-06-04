<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_clone_receipt_rule_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a receipt rule set by cloning an existing one

### Description

Creates a receipt rule set by cloning an existing one. All receipt rules
and configurations are copied to the new receipt rule set and are
completely independent of the source rule set.

For information about setting up rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_clone_receipt_rule_set(RuleSetName, OriginalRuleSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_clone_receipt_rule_set_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the rule set to create. The name must:</p>
<ul>
<li><p>This value can only contain ASCII letters (a-z, A-Z), numbers
(0-9), underscores (_), or dashes (-).</p></li>
<li><p>Start and end with a letter or number.</p></li>
<li><p>Contain less than 64 characters.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ses_clone_receipt_rule_set_:_OriginalRuleSetName">OriginalRuleSetName</code></td>
<td><p>[required] The name of the rule set to clone.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$clone_receipt_rule_set(
      RuleSetName = "string",
      OriginalRuleSetName = "string"
    )

### Examples

    ## Not run: 
    # The following example creates a receipt rule set by cloning an existing
    # one:
    svc$clone_receipt_rule_set(
      OriginalRuleSetName = "RuleSetToClone",
      RuleSetName = "RuleSetToCreate"
    )

    ## End(Not run)
