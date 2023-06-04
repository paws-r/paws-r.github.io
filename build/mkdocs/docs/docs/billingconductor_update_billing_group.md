<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_update_billing_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This updates an existing billing group

### Description

This updates an existing billing group.

### Usage

    billingconductor_update_billing_group(Arn, Name, Status,
      ComputationPreference, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_update_billing_group_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the billing group
being updated.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_billing_group_:_Name">Name</code></td>
<td><p>The name of the billing group. The names must be unique to each
billing group.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_billing_group_:_Status">Status</code></td>
<td><p>The status of the billing group. Only one of the valid values can
be used.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_billing_group_:_ComputationPreference">ComputationPreference</code></td>
<td><p>The preferences and settings that will be used to compute the
Amazon Web Services charges for a billing group.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_billing_group_:_Description">Description</code></td>
<td><p>A description of the billing group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      Description = "string",
      PrimaryAccountId = "string",
      PricingPlanArn = "string",
      Size = 123,
      LastModifiedTime = 123,
      Status = "ACTIVE"|"PRIMARY_ACCOUNT_MISSING",
      StatusReason = "string"
    )

### Request syntax

    svc$update_billing_group(
      Arn = "string",
      Name = "string",
      Status = "ACTIVE"|"PRIMARY_ACCOUNT_MISSING",
      ComputationPreference = list(
        PricingPlanArn = "string"
      ),
      Description = "string"
    )
