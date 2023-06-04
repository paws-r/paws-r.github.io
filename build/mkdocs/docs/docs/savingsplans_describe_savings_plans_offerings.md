<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_describe_savings_plans_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Savings Plans offerings

### Description

Describes the specified Savings Plans offerings.

### Usage

    savingsplans_describe_savings_plans_offerings(offeringIds,
      paymentOptions, productType, planTypes, durations, currencies,
      descriptions, serviceCodes, usageTypes, operations, filters, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_offeringIds">offeringIds</code></td>
<td><p>The IDs of the offerings.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_paymentOptions">paymentOptions</code></td>
<td><p>The payment options.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_productType">productType</code></td>
<td><p>The product type.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_planTypes">planTypes</code></td>
<td><p>The plan type.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_durations">durations</code></td>
<td><p>The durations, in seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_currencies">currencies</code></td>
<td><p>The currencies.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_descriptions">descriptions</code></td>
<td><p>The descriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_serviceCodes">serviceCodes</code></td>
<td><p>The services.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_usageTypes">usageTypes</code></td>
<td><p>The usage details of the line item in the billing
report.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_operations">operations</code></td>
<td><p>The specific AWS operation for the line item in the billing
report.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_filters">filters</code></td>
<td><p>The filters.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offerings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve additional results, make another call with the returned token
value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      searchResults = list(
        list(
          offeringId = "string",
          productTypes = list(
            "EC2"|"Fargate"|"Lambda"|"SageMaker"
          ),
          planType = "Compute"|"EC2Instance"|"SageMaker",
          description = "string",
          paymentOption = "All Upfront"|"Partial Upfront"|"No Upfront",
          durationSeconds = 123,
          currency = "CNY"|"USD",
          serviceCode = "string",
          usageType = "string",
          operation = "string",
          properties = list(
            list(
              name = "region"|"instanceFamily",
              value = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_savings_plans_offerings(
      offeringIds = list(
        "string"
      ),
      paymentOptions = list(
        "All Upfront"|"Partial Upfront"|"No Upfront"
      ),
      productType = "EC2"|"Fargate"|"Lambda"|"SageMaker",
      planTypes = list(
        "Compute"|"EC2Instance"|"SageMaker"
      ),
      durations = list(
        123
      ),
      currencies = list(
        "CNY"|"USD"
      ),
      descriptions = list(
        "string"
      ),
      serviceCodes = list(
        "string"
      ),
      usageTypes = list(
        "string"
      ),
      operations = list(
        "string"
      ),
      filters = list(
        list(
          name = "region"|"instanceFamily",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
