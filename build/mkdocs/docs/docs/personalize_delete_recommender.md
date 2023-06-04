<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates and removes a recommender

### Description

Deactivates and removes a recommender. A deleted recommender can no
longer be specified in a
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
request.

### Usage

    personalize_delete_recommender(recommenderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_recommender_:_recommenderArn">recommenderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recommender to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recommender(
      recommenderArn = "string"
    )
