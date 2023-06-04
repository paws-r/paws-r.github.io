<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_delete_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified rule

### Description

Deletes the specified rule.

You can't delete the default rule.

### Usage

    elbv2_delete_rule(RuleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_delete_rule_:_RuleArn">RuleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule(
      RuleArn = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified rule.
    svc$delete_rule(
      RuleArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-r..."
    )

    ## End(Not run)
