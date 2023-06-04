<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_pricing_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A paginated call to get pricing plans for the given billing period

### Description

A paginated call to get pricing plans for the given billing period. If
you don't provide a billing period, the current billing period is used.

### Usage

    billingconductor_list_pricing_plans(BillingPeriod, Filters, MaxResults,
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
id="billingconductor_list_pricing_plans_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period to get pricing plan.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_plans_:_Filters">Filters</code></td>
<td><p>A <code>ListPricingPlansFilter</code> that specifies the Amazon
Resource Name (ARNs) of pricing plans to retrieve pricing plans
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_pricing_plans_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of pricing plans to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_pricing_plans_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent call to get
pricing plans.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingPeriod = "string",
      PricingPlans = list(
        list(
          Name = "string",
          Arn = "string",
          Description = "string",
          Size = 123,
          CreationTime = 123,
          LastModifiedTime = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pricing_plans(
      BillingPeriod = "string",
      Filters = list(
        Arns = list(
          "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
