<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_insight_impact_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a service graph structure filtered by the specified insight

### Description

Retrieves a service graph structure filtered by the specified insight.
The service graph is limited to only structural information. For a
complete service graph, use this API with the GetServiceGraph API.

### Usage

    xray_get_insight_impact_graph(InsightId, StartTime, EndTime, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_get_insight_impact_graph_:_InsightId">InsightId</code></td>
<td><p>[required] The insight's unique identifier. Use the
GetInsightSummaries action to retrieve an InsightId.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_impact_graph_:_StartTime">StartTime</code></td>
<td><p>[required] The estimated start time of the insight, in Unix time
seconds. The StartTime is inclusive of the value provided and can't be
more than 30 days old.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_insight_impact_graph_:_EndTime">EndTime</code></td>
<td><p>[required] The estimated end time of the insight, in Unix time
seconds. The EndTime is exclusive of the value provided. The time range
between the start time and end time can't be more than six
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_insight_impact_graph_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token returned by a previous request to
retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      ServiceGraphStartTime = as.POSIXct(
        "2015-01-01"
      ),
      ServiceGraphEndTime = as.POSIXct(
        "2015-01-01"
      ),
      Services = list(
        list(
          ReferenceId = 123,
          Type = "string",
          Name = "string",
          Names = list(
            "string"
          ),
          AccountId = "string",
          Edges = list(
            list(
              ReferenceId = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_insight_impact_graph(
      InsightId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string"
    )
