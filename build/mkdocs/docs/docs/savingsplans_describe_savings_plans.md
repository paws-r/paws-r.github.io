<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_describe_savings_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Savings Plans

### Description

Describes the specified Savings Plans.

### Usage

    savingsplans_describe_savings_plans(savingsPlanArns, savingsPlanIds,
      nextToken, maxResults, states, filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_:_savingsPlanArns">savingsPlanArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the Savings Plans.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_:_savingsPlanIds">savingsPlanIds</code></td>
<td><p>The IDs of the Savings Plans.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_:_nextToken">nextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve additional results, make another call with the returned token
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_describe_savings_plans_:_states">states</code></td>
<td><p>The states.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_describe_savings_plans_:_filters">filters</code></td>
<td><p>The filters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      savingsPlans = list(
        list(
          offeringId = "string",
          savingsPlanId = "string",
          savingsPlanArn = "string",
          description = "string",
          start = "string",
          end = "string",
          state = "payment-pending"|"payment-failed"|"active"|"retired"|"queued"|"queued-deleted",
          region = "string",
          ec2InstanceFamily = "string",
          savingsPlanType = "Compute"|"EC2Instance"|"SageMaker",
          paymentOption = "All Upfront"|"Partial Upfront"|"No Upfront",
          productTypes = list(
            "EC2"|"Fargate"|"Lambda"|"SageMaker"
          ),
          currency = "CNY"|"USD",
          commitment = "string",
          upfrontPaymentAmount = "string",
          recurringPaymentAmount = "string",
          termDurationInSeconds = 123,
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_savings_plans(
      savingsPlanArns = list(
        "string"
      ),
      savingsPlanIds = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123,
      states = list(
        "payment-pending"|"payment-failed"|"active"|"retired"|"queued"|"queued-deleted"
      ),
      filters = list(
        list(
          name = "region"|"ec2-instance-family"|"commitment"|"upfront"|"term"|"savings-plan-type"|"payment-option"|"start"|"end",
          values = list(
            "string"
          )
        )
      )
    )
