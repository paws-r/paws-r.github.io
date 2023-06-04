<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_provide_anomaly_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the feedback property of a given cost anomaly

### Description

Modifies the feedback property of a given cost anomaly.

### Usage

    costexplorer_provide_anomaly_feedback(AnomalyId, Feedback)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_provide_anomaly_feedback_:_AnomalyId">AnomalyId</code></td>
<td><p>[required] A cost anomaly ID.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_provide_anomaly_feedback_:_Feedback">Feedback</code></td>
<td><p>[required] Describes whether the cost anomaly was a planned
activity or you considered it an anomaly.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyId = "string"
    )

### Request syntax

    svc$provide_anomaly_feedback(
      AnomalyId = "string",
      Feedback = "YES"|"NO"|"PLANNED_ACTIVITY"
    )
