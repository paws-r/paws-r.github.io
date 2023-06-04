<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_associate_pricing_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connects an array of PricingRuleArns to a defined PricingPlan

### Description

Connects an array of `PricingRuleArns` to a defined `PricingPlan`. The
maximum number `PricingRuleArn` that can be associated in one call is
30.

### Usage

    billingconductor_associate_pricing_rules(Arn, PricingRuleArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_associate_pricing_rules_:_Arn">Arn</code></td>
<td><p>[required] The <code>PricingPlanArn</code> that the
<code>PricingRuleArns</code> are associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_associate_pricing_rules_:_PricingRuleArns">PricingRuleArns</code></td>
<td><p>[required] The <code>PricingRuleArns</code> that are associated
with the Pricing Plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$associate_pricing_rules(
      Arn = "string",
      PricingRuleArns = list(
        "string"
      )
    )
