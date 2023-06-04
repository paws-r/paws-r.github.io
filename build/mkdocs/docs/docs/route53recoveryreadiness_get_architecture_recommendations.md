<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_architecture_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets recommendations about architecture designs for improving resiliency for an application, based on a recovery group

### Description

Gets recommendations about architecture designs for improving resiliency
for an application, based on a recovery group.

### Usage

    route53recoveryreadiness_get_architecture_recommendations(MaxResults,
      NextToken, RecoveryGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_architecture_recommendations_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_architecture_recommendations_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_architecture_recommendations_:_RecoveryGroupName">RecoveryGroupName</code></td>
<td><p>[required] The name of a recovery group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LastAuditTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      Recommendations = list(
        list(
          RecommendationText = "string"
        )
      )
    )

### Request syntax

    svc$get_architecture_recommendations(
      MaxResults = 123,
      NextToken = "string",
      RecoveryGroupName = "string"
    )
