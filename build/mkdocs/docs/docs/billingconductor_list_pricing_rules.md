<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_pricing_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans

### Description

Describes a pricing rule that can be associated to a pricing plan, or
set of pricing plans.

### Usage

    billingconductor_list_pricing_rules(BillingPeriod, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_rules_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period to get the pricing plan.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_rules_:_Filters">Filters</code></td>
<td><p>A <code>DescribePricingRuleFilter</code> that specifies the
Amazon Resource Name (ARNs) of pricing rules to retrieve pricing rules
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of pricing rules to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_rules_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent call to get
pricing rules.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingPeriod = "string",
      PricingRules = list(
        list(
          Name = "string",
          Arn = "string",
          Description = "string",
          Scope = "GLOBAL"|"SERVICE"|"BILLING_ENTITY"|"SKU",
          Type = "MARKUP"|"DISCOUNT"|"TIERING",
          ModifierPercentage = 123.0,
          Service = "string",
          AssociatedPricingPlanCount = 123,
          CreationTime = 123,
          LastModifiedTime = 123,
          BillingEntity = "string",
          Tiering = list(
            FreeTier = list(
              Activated = TRUE|FALSE
            )
          ),
          UsageType = "string",
          Operation = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pricing_rules(
      BillingPeriod = "string",
      Filters = list(
        Arns = list(
          "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
