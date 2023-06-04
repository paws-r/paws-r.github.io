<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a recommender with the recipe (a Domain dataset group use case) you specify

### Description

Creates a recommender with the recipe (a Domain dataset group use case)
you specify. You create recommenders for a Domain dataset group and
specify the recommender's Amazon Resource Name (ARN) when you make a
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request.

**Minimum recommendation requests per second**

When you create a recommender, you can configure the recommender's
minimum recommendation requests per second. The minimum recommendation
requests per second (`minRecommendationRequestsPerSecond`) specifies the
baseline recommendation request throughput provisioned by Amazon
Personalize. The default minRecommendationRequestsPerSecond is `1`. A
recommendation request is a single `GetRecommendations` operation.
Request throughput is measured in requests per second and Amazon
Personalize uses your requests per second to derive your requests per
hour and the price of your recommender usage.

If your requests per second increases beyond
`minRecommendationRequestsPerSecond`, Amazon Personalize auto-scales the
provisioned capacity up and down, but never below
`minRecommendationRequestsPerSecond`. There's a short time delay while
the capacity is increased that might cause loss of requests.

Your bill is the greater of either the minimum requests per hour (based
on minRecommendationRequestsPerSecond) or the actual number of requests.
The actual request throughput used is calculated as the average
requests/second within a one-hour window. We recommend starting with the
default `minRecommendationRequestsPerSecond`, track your usage using
Amazon CloudWatch metrics, and then increase the
`minRecommendationRequestsPerSecond` as necessary.

**Status**

A recommender can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   STOP PENDING \\ STOP IN\_PROGRESS \\ INACTIVE \\ START PENDING \\
    START IN\_PROGRESS \\ ACTIVE

-   DELETE PENDING \\ DELETE IN\_PROGRESS

To get the recommender status, call `describe_recommender`.

Wait until the `status` of the recommender is `ACTIVE` before asking the
recommender for recommendations.

**Related APIs**

-   `list_recommenders`

-   `describe_recommender`

-   `update_recommender`

-   `delete_recommender`

### Usage

    personalize_create_recommender(name, datasetGroupArn, recipeArn,
      recommenderConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_recommender_:_name">name</code></td>
<td><p>[required] The name of the recommender.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_recommender_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the destination
domain dataset group for the recommender.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_recommender_:_recipeArn">recipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recipe that the
recommender will use. For a recommender, a recipe is a Domain dataset
group use case. Only Domain dataset group use cases can be used to
create a recommender. For information about use cases see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing
recommender use cases</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_recommender_:_recommenderConfig">recommenderConfig</code></td>
<td><p>The configuration details of the recommender.</p></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_recommender_:_tags">tags</code></td>
<td><p>A list of tags to apply to the recommender.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommenderArn = "string"
    )

### Request syntax

    svc$create_recommender(
      name = "string",
      datasetGroupArn = "string",
      recipeArn = "string",
      recommenderConfig = list(
        itemExplorationConfig = list(
          "string"
        ),
        minRecommendationRequestsPerSecond = 123
      ),
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
