<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_engagements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all engagements that have happened in an incident

### Description

Lists all engagements that have happened in an incident.

### Usage

    ssmcontacts_list_engagements(NextToken, MaxResults, IncidentId,
      TimeRangeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_engagements_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_engagements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of engagements per page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_engagements_:_IncidentId">IncidentId</code></td>
<td><p>The Amazon Resource Name (ARN) of the incident you're listing
engagements for.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_engagements_:_TimeRangeValue">TimeRangeValue</code></td>
<td><p>The time range to lists engagements for an incident.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Engagements = list(
        list(
          EngagementArn = "string",
          ContactArn = "string",
          Sender = "string",
          IncidentId = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          StopTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_engagements(
      NextToken = "string",
      MaxResults = 123,
      IncidentId = "string",
      TimeRangeValue = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )
