<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_journey_run_execution_activity_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) pre-aggregated data for a standard run execution metric that applies to a journey activity

### Description

Retrieves (queries) pre-aggregated data for a standard run execution
metric that applies to a journey activity.

### Usage

    pinpoint_get_journey_run_execution_activity_metrics(ApplicationId,
      JourneyActivityId, JourneyId, NextToken, PageSize, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_JourneyActivityId">JourneyActivityId</code></td>
<td><p>[required] The unique identifier for the journey
activity.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_JourneyId">JourneyId</code></td>
<td><p>[required] The unique identifier for the journey.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_NextToken">NextToken</code></td>
<td><p>The “ string that specifies which page of results to return in a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_run_execution_activity_metrics_:_RunId">RunId</code></td>
<td><p>[required] The unique identifier for the journey run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JourneyRunExecutionActivityMetricsResponse = list(
        ActivityType = "string",
        ApplicationId = "string",
        JourneyActivityId = "string",
        JourneyId = "string",
        LastEvaluatedTime = "string",
        Metrics = list(
          "string"
        ),
        RunId = "string"
      )
    )

### Request syntax

    svc$get_journey_run_execution_activity_metrics(
      ApplicationId = "string",
      JourneyActivityId = "string",
      JourneyId = "string",
      NextToken = "string",
      PageSize = "string",
      RunId = "string"
    )

### Examples

    ## Not run: 
    # The following example gets activity execution metrics for a single run
    # of a journey.
    svc$get_journey_run_execution_activity_metrics(
      ApplicationId = "11111111112222222222333333333344",
      JourneyId = "aaaaaaaaaabbbbbbbbbbccccccccccdd",
      RunId = "99999999998888888888777777777766",
      JourneyActivityId = "AAAAAAAAAA"
    )

    ## End(Not run)
