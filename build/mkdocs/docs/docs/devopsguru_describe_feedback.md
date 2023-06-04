<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the most recent feedback submitted in the current Amazon Web Services account and Region

### Description

Returns the most recent feedback submitted in the current Amazon Web
Services account and Region.

### Usage

    devopsguru_describe_feedback(InsightId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_describe_feedback_:_InsightId">InsightId</code></td>
<td><p>The ID of the insight for which the feedback was
provided.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightFeedback = list(
        Id = "string",
        Feedback = "VALID_COLLECTION"|"RECOMMENDATION_USEFUL"|"ALERT_TOO_SENSITIVE"|"DATA_NOISY_ANOMALY"|"DATA_INCORRECT"
      )
    )

### Request syntax

    svc$describe_feedback(
      InsightId = "string"
    )
