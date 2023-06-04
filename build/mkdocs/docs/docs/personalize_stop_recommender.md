<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_stop_recommender</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a recommender that is ACTIVE

### Description

Stops a recommender that is ACTIVE. Stopping a recommender halts billing
and automatic retraining for the recommender.

### Usage

    personalize_stop_recommender(recommenderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_stop_recommender_:_recommenderArn">recommenderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recommender to
stop.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommenderArn = "string"
    )

### Request syntax

    svc$stop_recommender(
      recommenderArn = "string"
    )
