<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_pricing_rules_associated_to_pricing_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the pricing rules that are associated with a pricing plan

### Description

Lists the pricing rules that are associated with a pricing plan.

### Usage

    billingconductor_list_pricing_rules_associated_to_pricing_plan(
      BillingPeriod, PricingPlanArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_rules_associated_to_pricing_plan_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The billing period for which the pricing rule associations are to
be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_rules_associated_to_pricing_plan_:_PricingPlanArn">PricingPlanArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pricing plan for
which associations are to be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_rules_associated_to_pricing_plan_:_MaxResults">MaxResults</code></td>
<td><p>The optional maximum number of pricing rule associations to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_rules_associated_to_pricing_plan_:_NextToken">NextToken</code></td>
<td><p>The optional pagination token returned by a previous
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingPeriod = "string",
      PricingPlanArn = "string",
      PricingRuleArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pricing_rules_associated_to_pricing_plan(
      BillingPeriod = "string",
      PricingPlanArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
