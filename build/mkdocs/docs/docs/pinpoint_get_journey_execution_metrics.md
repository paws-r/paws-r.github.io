<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_journey_execution_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey

### Description

Retrieves (queries) pre-aggregated data for a standard execution metric
that applies to a journey.

### Usage

    pinpoint_get_journey_execution_metrics(ApplicationId, JourneyId,
      NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_journey_execution_metrics_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_execution_metrics_:_JourneyId">JourneyId</code></td>
<td><p>[required] The unique identifier for the journey.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_execution_metrics_:_NextToken">NextToken</code></td>
<td><p>The “ string that specifies which page of results to return in a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_execution_metrics_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JourneyExecutionMetricsResponse = list(
        ApplicationId = "string",
        JourneyId = "string",
        LastEvaluatedTime = "string",
        Metrics = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_journey_execution_metrics(
      ApplicationId = "string",
      JourneyId = "string",
      NextToken = "string",
      PageSize = "string"
    )
