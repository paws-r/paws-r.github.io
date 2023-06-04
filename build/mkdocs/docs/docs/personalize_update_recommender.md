<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_update_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the recommender to modify the recommender configuration

### Description

Updates the recommender to modify the recommender configuration.

### Usage

    personalize_update_recommender(recommenderArn, recommenderConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_update_recommender_:_recommenderArn">recommenderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recommender to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_update_recommender_:_recommenderConfig">recommenderConfig</code></td>
<td><p>[required] The configuration details of the recommender.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommenderArn = "string"
    )

### Request syntax

    svc$update_recommender(
      recommenderArn = "string",
      recommenderConfig = list(
        itemExplorationConfig = list(
          "string"
        ),
        minRecommendationRequestsPerSecond = 123
      )
    )
