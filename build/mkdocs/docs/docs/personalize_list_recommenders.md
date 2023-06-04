<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_recommenders</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of recommenders in a given Domain dataset group

### Description

Returns a list of recommenders in a given Domain dataset group. When a
Domain dataset group is not specified, all the recommenders associated
with the account are listed. The response provides the properties for
each recommender, including the Amazon Resource Name (ARN). For more
information on recommenders, see `create_recommender`.

### Usage

    personalize_list_recommenders(datasetGroupArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_recommenders_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Domain dataset group to
list the recommenders for. When a Domain dataset group is not specified,
all the recommenders associated with the account are listed.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_recommenders_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_recommenders</code> for getting the next set of recommenders
(if they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_recommenders_:_maxResults">maxResults</code></td>
<td><p>The maximum number of recommenders to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommenders = list(
        list(
          name = "string",
          recommenderArn = "string",
          datasetGroupArn = "string",
          recipeArn = "string",
          recommenderConfig = list(
            itemExplorationConfig = list(
              "string"
            ),
            minRecommendationRequestsPerSecond = 123
          ),
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_recommenders(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
