<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_pricing_plans_associated_with_pricing_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of the pricing plans that are associated with a pricing rule

### Description

A list of the pricing plans that are associated with a pricing rule.

### Usage

    billingconductor_list_pricing_plans_associated_with_pricing_rule(
      BillingPeriod, PricingRuleArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_plans_associated_with_pricing_rule_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The pricing plan billing period for which associations will be
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_plans_associated_with_pricing_rule_:_PricingRuleArn">PricingRuleArn</code></td>
<td><p>[required] The pricing rule Amazon Resource Name (ARN) for which
associations will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_plans_associated_with_pricing_rule_:_MaxResults">MaxResults</code></td>
<td><p>The optional maximum number of pricing rule associations to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_plans_associated_with_pricing_rule_:_NextToken">NextToken</code></td>
<td><p>The optional pagination token returned by a previous
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingPeriod = "string",
      PricingRuleArn = "string",
      PricingPlanArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pricing_plans_associated_with_pricing_rule(
      BillingPeriod = "string",
      PricingRuleArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
