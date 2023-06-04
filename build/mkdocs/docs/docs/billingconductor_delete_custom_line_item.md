<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_delete_custom_line_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the custom line item identified by the given ARN in the current, or previous billing period

### Description

Deletes the custom line item identified by the given ARN in the current,
or previous billing period.

### Usage

    billingconductor_delete_custom_line_item(Arn, BillingPeriodRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_delete_custom_line_item_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the custom line item to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_delete_custom_line_item_:_BillingPeriodRange">BillingPeriodRange</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$delete_custom_line_item(
      Arn = "string",
      BillingPeriodRange = list(
        InclusiveStartBillingPeriod = "string",
        ExclusiveEndBillingPeriod = "string"
      )
    )
