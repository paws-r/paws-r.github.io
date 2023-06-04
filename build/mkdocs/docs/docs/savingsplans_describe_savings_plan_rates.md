<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_describe_savings_plan_rates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Savings Plans rates

### Description

Describes the specified Savings Plans rates.

### Usage

    savingsplans_describe_savings_plan_rates(savingsPlanId, filters,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plan_rates_:_savingsPlanId">savingsPlanId</code></td>
<td><p>[required] The ID of the Savings Plan.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plan_rates_:_filters">filters</code></td>
<td><p>The filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plan_rates_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plan_rates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve additional results, make another call with the returned token
value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      savingsPlanId = "string",
      searchResults = list(
        list(
          rate = "string",
          currency = "CNY"|"USD",
          unit = "Hrs"|"Lambda-GB-Second"|"Request",
          productType = "EC2"|"Fargate"|"Lambda"|"SageMaker",
          serviceCode = "AmazonEC2"|"AmazonECS"|"AmazonEKS"|"AWSLambda"|"AmazonSageMaker",
          usageType = "string",
          operation = "string",
          properties = list(
            list(
              name = "region"|"instanceType"|"instanceFamily"|"productDescription"|"tenancy",
              value = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_savings_plan_rates(
      savingsPlanId = "string",
      filters = list(
        list(
          name = "region"|"instanceType"|"productDescription"|"tenancy"|"productType"|"serviceCode"|"usageType"|"operation",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
