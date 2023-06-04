<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_delete_pricing_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the pricing rule that's identified by the input Amazon Resource Name (ARN)

### Description

Deletes the pricing rule that's identified by the input Amazon Resource
Name (ARN).

### Usage

    billingconductor_delete_pricing_rule(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_delete_pricing_rule_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pricing rule
that you are deleting.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$delete_pricing_rule(
      Arn = "string"
    )
