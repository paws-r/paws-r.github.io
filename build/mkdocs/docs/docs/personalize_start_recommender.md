<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_start_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a recommender that is INACTIVE

### Description

Starts a recommender that is INACTIVE. Starting a recommender does not
create any new models, but resumes billing and automatic retraining for
the recommender.

### Usage

    personalize_start_recommender(recommenderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_start_recommender_:_recommenderArn">recommenderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recommender to
start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommenderArn = "string"
    )

### Request syntax

    svc$start_recommender(
      recommenderArn = "string"
    )
