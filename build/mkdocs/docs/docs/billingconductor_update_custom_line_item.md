<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_update_custom_line_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an existing custom line item in the current or previous billing period

### Description

Update an existing custom line item in the current or previous billing
period.

### Usage

    billingconductor_update_custom_line_item(Arn, Name, Description,
      ChargeDetails, BillingPeriodRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_update_custom_line_item_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the custom line item to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_custom_line_item_:_Name">Name</code></td>
<td><p>The new name for the custom line item.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_custom_line_item_:_Description">Description</code></td>
<td><p>The new line item description of the custom line item.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_custom_line_item_:_ChargeDetails">ChargeDetails</code></td>
<td><p>A <code>ListCustomLineItemChargeDetails</code> containing the new
charge details for the custom line item.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_custom_line_item_:_BillingPeriodRange">BillingPeriodRange</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      BillingGroupArn = "string",
      Name = "string",
      Description = "string",
      ChargeDetails = list(
        Flat = list(
          ChargeValue = 123.0
        ),
        Percentage = list(
          PercentageValue = 123.0
        ),
        Type = "CREDIT"|"FEE"
      ),
      LastModifiedTime = 123,
      AssociationSize = 123
    )

### Request syntax

    svc$update_custom_line_item(
      Arn = "string",
      Name = "string",
      Description = "string",
      ChargeDetails = list(
        Flat = list(
          ChargeValue = 123.0
        ),
        Percentage = list(
          PercentageValue = 123.0
        )
      ),
      BillingPeriodRange = list(
        InclusiveStartBillingPeriod = "string",
        ExclusiveEndBillingPeriod = "string"
      )
    )
