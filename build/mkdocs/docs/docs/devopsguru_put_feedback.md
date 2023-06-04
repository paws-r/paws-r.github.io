<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_put_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Collects customer feedback about the specified insight

### Description

Collects customer feedback about the specified insight.

### Usage

    devopsguru_put_feedback(InsightFeedback)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_put_feedback_:_InsightFeedback">InsightFeedback</code></td>
<td><p>The feedback from customers is about the recommendations in this
insight.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_feedback(
      InsightFeedback = list(
        Id = "string",
        Feedback = "VALID_COLLECTION"|"RECOMMENDATION_USEFUL"|"ALERT_TOO_SENSITIVE"|"DATA_NOISY_ANOMALY"|"DATA_INCORRECT"
      )
    )
