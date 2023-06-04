<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_describe_engagement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Incident Manager uses engagements to engage contacts and escalation plans during an incident

### Description

Incident Manager uses engagements to engage contacts and escalation
plans during an incident. Use this command to describe the engagement
that occurred during an incident.

### Usage

    ssmcontacts_describe_engagement(EngagementId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_describe_engagement_:_EngagementId">EngagementId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the engagement you
want the details of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactArn = "string",
      EngagementArn = "string",
      Sender = "string",
      Subject = "string",
      Content = "string",
      PublicSubject = "string",
      PublicContent = "string",
      IncidentId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      StopTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_engagement(
      EngagementId = "string"
    )
