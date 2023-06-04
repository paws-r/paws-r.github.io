<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_disassociate_pricing_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a list of pricing rules from a pricing plan

### Description

Disassociates a list of pricing rules from a pricing plan.

### Usage

    billingconductor_disassociate_pricing_rules(Arn, PricingRuleArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_disassociate_pricing_rules_:_Arn">Arn</code></td>
<td><p>[required] The pricing plan Amazon Resource Name (ARN) to
disassociate pricing rules from.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_disassociate_pricing_rules_:_PricingRuleArns">PricingRuleArns</code></td>
<td><p>[required] A list containing the Amazon Resource Name (ARN) of
the pricing rules that will be disassociated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$disassociate_pricing_rules(
      Arn = "string",
      PricingRuleArns = list(
        "string"
      )
    )
