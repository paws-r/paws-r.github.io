<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_stop_engagement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an engagement before it finishes the final stage of the escalation plan or engagement plan

### Description

Stops an engagement before it finishes the final stage of the escalation
plan or engagement plan. Further contacts aren't engaged.

### Usage

    ssmcontacts_stop_engagement(EngagementId, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_stop_engagement_:_EngagementId">EngagementId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
engagement.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_stop_engagement_:_Reason">Reason</code></td>
<td><p>The reason that you're stopping the engagement.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_engagement(
      EngagementId = "string",
      Reason = "string"
    )
