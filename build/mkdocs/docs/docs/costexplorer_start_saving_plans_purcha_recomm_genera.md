<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_start_savings_plans_purchase_recommendation_generation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a Savings Plans recommendation generation

### Description

Requests a Savings Plans recommendation generation. This enables you to
calculate a fresh set of Savings Plans recommendations that takes your
latest usage data and current Savings Plans inventory into account. You
can refresh Savings Plans recommendations up to three times daily for a
consolidated billing family.

`start_savings_plans_purchase_recommendation_generation` has no request
syntax because no input parameters are needed to support this operation.

### Usage

    costexplorer_start_savings_plans_purchase_recommendation_generation()

### Value

A list with the following syntax:

    list(
      RecommendationId = "string",
      GenerationStartedTime = "string",
      EstimatedCompletionTime = "string"
    )

### Request syntax

    svc$start_savings_plans_purchase_recommendation_generation()
