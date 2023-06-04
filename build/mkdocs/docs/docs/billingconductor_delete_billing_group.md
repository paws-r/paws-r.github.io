<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_delete_billing_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a billing group

### Description

Deletes a billing group.

### Usage

    billingconductor_delete_billing_group(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_delete_billing_group_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the billing group
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

    svc$delete_billing_group(
      Arn = "string"
    )
