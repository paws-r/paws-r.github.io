<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_insight_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event

### Description

X-Ray reevaluates insights periodically until they're resolved, and
records each intermediate state as an event. You can review an insight's
events in the Impact Timeline on the Inspect page in the X-Ray console.

### Usage

    xray_get_insight_events(InsightId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_insight_events_:_InsightId">InsightId</code></td>
<td><p>[required] The insight's unique identifier. Use the
GetInsightSummaries action to retrieve an InsightId.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_events_:_MaxResults">MaxResults</code></td>
<td><p>Used to retrieve at most the specified value of events.</p></td>
</tr>
<tr class="odd">
<td><code id="xray_get_insight_events_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token returned by a previous request to
retrieve the next page of events.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightEvents = list(
        list(
          Summary = "string",
          EventTime = as.POSIXct(
            "2015-01-01"
          ),
          ClientRequestImpactStatistics = list(
            FaultCount = 123,
            OkCount = 123,
            TotalCount = 123
          ),
          RootCauseServiceRequestImpactStatistics = list(
            FaultCount = 123,
            OkCount = 123,
            TotalCount = 123
          ),
          TopAnomalousServices = list(
            list(
              ServiceId = list(
                Name = "string",
                Names = list(
                  "string"
                ),
                AccountId = "string",
                Type = "string"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_insight_events(
      InsightId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
