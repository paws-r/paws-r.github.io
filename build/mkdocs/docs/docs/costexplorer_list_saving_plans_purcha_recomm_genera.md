<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_list_savings_plans_purchase_recommendation_generation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of your historical recommendation generations within the past 30 days

### Description

Retrieves a list of your historical recommendation generations within
the past 30 days.

### Usage

    costexplorer_list_savings_plans_purchase_recommendation_generation(
      GenerationStatus, RecommendationIds, PageSize, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_list_savings_plans_purchase_recommendation_generation_:_GenerationStatus">GenerationStatus</code></td>
<td><p>The status of the recommendation generation.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_list_savings_plans_purchase_recommendation_generation_:_RecommendationIds">RecommendationIds</code></td>
<td><p>The IDs for each specific recommendation.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_list_savings_plans_purchase_recommendation_generation_:_PageSize">PageSize</code></td>
<td><p>The number of recommendations that you want returned in a single
response object.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_list_savings_plans_purchase_recommendation_generation_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GenerationSummaryList = list(
        list(
          RecommendationId = "string",
          GenerationStatus = "SUCCEEDED"|"PROCESSING"|"FAILED",
          GenerationStartedTime = "string",
          GenerationCompletionTime = "string",
          EstimatedCompletionTime = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_savings_plans_purchase_recommendation_generation(
      GenerationStatus = "SUCCEEDED"|"PROCESSING"|"FAILED",
      RecommendationIds = list(
        "string"
      ),
      PageSize = 123,
      NextPageToken = "string"
    )
