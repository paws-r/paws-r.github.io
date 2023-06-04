<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_create_pricing_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pricing plan that is used for computing Amazon Web Services charges for billing groups

### Description

Creates a pricing plan that is used for computing Amazon Web Services
charges for billing groups.

### Usage

    billingconductor_create_pricing_plan(ClientToken, Name, Description,
      PricingRuleArns, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_plan_:_ClientToken">ClientToken</code></td>
<td><p>The token that is needed to support idempotency. Idempotency
isn't currently supported, but will be implemented in a future
update.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_plan_:_Name">Name</code></td>
<td><p>[required] The name of the pricing plan. The names must be unique
to each pricing plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_plan_:_Description">Description</code></td>
<td><p>The description of the pricing plan.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_plan_:_PricingRuleArns">PricingRuleArns</code></td>
<td><p>A list of Amazon Resource Names (ARNs) that define the pricing
plan parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_plan_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values that are attached to
a pricing plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_pricing_plan(
      ClientToken = "string",
      Name = "string",
      Description = "string",
      PricingRuleArns = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
