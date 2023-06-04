<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_update_pricing_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This updates an existing pricing plan

### Description

This updates an existing pricing plan.

### Usage

    billingconductor_update_pricing_plan(Arn, Name, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_update_pricing_plan_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pricing plan
that you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_pricing_plan_:_Name">Name</code></td>
<td><p>The name of the pricing plan. The name must be unique to each
pricing plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_pricing_plan_:_Description">Description</code></td>
<td><p>The description of the pricing plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      Description = "string",
      Size = 123,
      LastModifiedTime = 123
    )

### Request syntax

    svc$update_pricing_plan(
      Arn = "string",
      Name = "string",
      Description = "string"
    )
