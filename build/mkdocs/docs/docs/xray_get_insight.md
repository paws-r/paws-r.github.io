<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_insight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the summary information of an insight

### Description

Retrieves the summary information of an insight. This includes impact to
clients and root cause services, the top anomalous services, the
category, the state of the insight, and the start and end time of the
insight.

### Usage

    xray_get_insight(InsightId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_insight_:_InsightId">InsightId</code></td>
<td><p>[required] The insight's unique identifier. Use the
GetInsightSummaries action to retrieve an InsightId.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Insight = list(
        InsightId = "string",
        GroupARN = "string",
        GroupName = "string",
        RootCauseServiceId = list(
          Name = "string",
          Names = list(
            "string"
          ),
          AccountId = "string",
          Type = "string"
        ),
        Categories = list(
          "FAULT"
        ),
        State = "ACTIVE"|"CLOSED",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        Summary = "string",
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
    )

### Request syntax

    svc$get_insight(
      InsightId = "string"
    )
