<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given recommender, including its status

### Description

Describes the given recommender, including its status.

A recommender can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   STOP PENDING \\ STOP IN\_PROGRESS \\ INACTIVE \\ START PENDING \\
    START IN\_PROGRESS \\ ACTIVE

-   DELETE PENDING \\ DELETE IN\_PROGRESS

When the `status` is `⁠CREATE FAILED⁠`, the response includes the
`failureReason` key, which describes why.

The `modelMetrics` key is null when the recommender is being created or
deleted.

For more information on recommenders, see `create_recommender`.

### Usage

    personalize_describe_recommender(recommenderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_recommender_:_recommenderArn">recommenderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recommender to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommender = list(
        recommenderArn = "string",
        datasetGroupArn = "string",
        name = "string",
        recipeArn = "string",
        recommenderConfig = list(
          itemExplorationConfig = list(
            "string"
          ),
          minRecommendationRequestsPerSecond = 123
        ),
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        status = "string",
        failureReason = "string",
        latestRecommenderUpdate = list(
          recommenderConfig = list(
            itemExplorationConfig = list(
              "string"
            ),
            minRecommendationRequestsPerSecond = 123
          ),
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          status = "string",
          failureReason = "string"
        ),
        modelMetrics = list(
          123.0
        )
      )
    )

### Request syntax

    svc$describe_recommender(
      recommenderArn = "string"
    )
