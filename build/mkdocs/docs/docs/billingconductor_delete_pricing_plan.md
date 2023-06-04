<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_delete_pricing_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a pricing plan

### Description

Deletes a pricing plan. The pricing plan must not be associated with any
billing groups to delete successfully.

### Usage

    billingconductor_delete_pricing_plan(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_delete_pricing_plan_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pricing plan
that you're deleting.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$delete_pricing_plan(
      Arn = "string"
    )
