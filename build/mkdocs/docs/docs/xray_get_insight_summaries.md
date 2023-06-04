<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_insight_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the summaries of all insights in the specified group matching the provided filter values

### Description

Retrieves the summaries of all insights in the specified group matching
the provided filter values.

### Usage

    xray_get_insight_summaries(States, GroupARN, GroupName, StartTime,
      EndTime, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_insight_summaries_:_States">States</code></td>
<td><p>The list of insight states.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_summaries_:_GroupARN">GroupARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the group. Required if the
GroupName isn't provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_insight_summaries_:_GroupName">GroupName</code></td>
<td><p>The name of the group. Required if the GroupARN isn't
provided.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_summaries_:_StartTime">StartTime</code></td>
<td><p>[required] The beginning of the time frame in which the insights
started. The start time can't be more than 30 days old.</p></td>
</tr>
<tr class="odd">
<td><code id="xray_get_insight_summaries_:_EndTime">EndTime</code></td>
<td><p>[required] The end of the time frame in which the insights ended.
The end time can't be more than 30 days old.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_summaries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_insight_summaries_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightSummaries = list(
        list(
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
          ),
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_insight_summaries(
      States = list(
        "ACTIVE"|"CLOSED"
      ),
      GroupARN = "string",
      GroupName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
