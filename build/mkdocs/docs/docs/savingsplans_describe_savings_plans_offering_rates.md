<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_describe_savings_plans_offering_rates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Savings Plans offering rates

### Description

Describes the specified Savings Plans offering rates.

### Usage

    savingsplans_describe_savings_plans_offering_rates(
      savingsPlanOfferingIds, savingsPlanPaymentOptions, savingsPlanTypes,
      products, serviceCodes, usageTypes, operations, filters, nextToken,
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
id="savingsplans_describe_savings_plans_offering_rates_:_savingsPlanOfferingIds">savingsPlanOfferingIds</code></td>
<td><p>The IDs of the offerings.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_savingsPlanPaymentOptions">savingsPlanPaymentOptions</code></td>
<td><p>The payment options.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_savingsPlanTypes">savingsPlanTypes</code></td>
<td><p>The plan types.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_products">products</code></td>
<td><p>The AWS products.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_serviceCodes">serviceCodes</code></td>
<td><p>The services.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_usageTypes">usageTypes</code></td>
<td><p>The usage details of the line item in the billing
report.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_operations">operations</code></td>
<td><p>The specific AWS operation for the line item in the billing
report.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_filters">filters</code></td>
<td><p>The filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_offering_rates_:_maxResults">maxResults</code></td>
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
          savingsPlanOffering = list(
            offeringId = "string",
            paymentOption = "All Upfront"|"Partial Upfront"|"No Upfront",
            planType = "Compute"|"EC2Instance"|"SageMaker",
            durationSeconds = 123,
            currency = "CNY"|"USD",
            planDescription = "string"
          ),
          rate = "string",
          unit = "Hrs"|"Lambda-GB-Second"|"Request",
          productType = "EC2"|"Fargate"|"Lambda"|"SageMaker",
          serviceCode = "AmazonEC2"|"AmazonECS"|"AmazonEKS"|"AWSLambda"|"AmazonSageMaker",
          usageType = "string",
          operation = "string",
          properties = list(
            list(
              name = "string",
              value = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_savings_plans_offering_rates(
      savingsPlanOfferingIds = list(
        "string"
      ),
      savingsPlanPaymentOptions = list(
        "All Upfront"|"Partial Upfront"|"No Upfront"
      ),
      savingsPlanTypes = list(
        "Compute"|"EC2Instance"|"SageMaker"
      ),
      products = list(
        "EC2"|"Fargate"|"Lambda"|"SageMaker"
      ),
      serviceCodes = list(
        "AmazonEC2"|"AmazonECS"|"AmazonEKS"|"AWSLambda"|"AmazonSageMaker"
      ),
      usageTypes = list(
        "string"
      ),
      operations = list(
        "string"
      ),
      filters = list(
        list(
          name = "region"|"instanceFamily"|"instanceType"|"productDescription"|"tenancy"|"productId",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
