<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_create_custom_line_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom line item that can be used to create a one-time fixed charge that can be applied to a single billing group for the current or previous billing period

### Description

Creates a custom line item that can be used to create a one-time fixed
charge that can be applied to a single billing group for the current or
previous billing period. The one-time fixed charge is either a fee or
discount.

### Usage

    billingconductor_create_custom_line_item(ClientToken, Name, Description,
      BillingGroupArn, BillingPeriodRange, Tags, ChargeDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_create_custom_line_item_:_ClientToken">ClientToken</code></td>
<td><p>The token that is needed to support idempotency. Idempotency
isn't currently supported, but will be implemented in a future
update.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_custom_line_item_:_Name">Name</code></td>
<td><p>[required] The name of the custom line item.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_custom_line_item_:_Description">Description</code></td>
<td><p>[required] The description of the custom line item. This is shown
on the Bills page in association with the charge value.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_custom_line_item_:_BillingGroupArn">BillingGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that references the
billing group where the custom line item applies to.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_custom_line_item_:_BillingPeriodRange">BillingPeriodRange</code></td>
<td><p>A time range for which the custom line item is
effective.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_custom_line_item_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values that are attached to
a custom line item.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_custom_line_item_:_ChargeDetails">ChargeDetails</code></td>
<td><p>[required] A <code>CustomLineItemChargeDetails</code> that
describes the charge details for a custom line item.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_custom_line_item(
      ClientToken = "string",
      Name = "string",
      Description = "string",
      BillingGroupArn = "string",
      BillingPeriodRange = list(
        InclusiveStartBillingPeriod = "string",
        ExclusiveEndBillingPeriod = "string"
      ),
      Tags = list(
        "string"
      ),
      ChargeDetails = list(
        Flat = list(
          ChargeValue = 123.0
        ),
        Percentage = list(
          PercentageValue = 123.0,
          AssociatedValues = list(
            "string"
          )
        ),
        Type = "CREDIT"|"FEE"
      )
    )
