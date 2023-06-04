<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_journey_date_range_kpi</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey

### Description

Retrieves (queries) pre-aggregated data for a standard engagement metric
that applies to a journey.

### Usage

    pinpoint_get_journey_date_range_kpi(ApplicationId, EndTime, JourneyId,
      KpiName, NextToken, PageSize, StartTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_EndTime">EndTime</code></td>
<td><p>The last date and time to retrieve data for, as part of an
inclusive date range that filters the query results. This value should
be in extended ISO 8601 format and use Coordinated Universal Time (UTC),
for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26,
2019.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_JourneyId">JourneyId</code></td>
<td><p>[required] The unique identifier for the journey.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_KpiName">KpiName</code></td>
<td><p>[required] The name of the metric, also referred to as a <em>key
performance indicator (KPI)</em>, to retrieve data for. This value
describes the associated metric and consists of two or more terms, which
are comprised of lowercase alphanumeric characters, separated by a
hyphen. Examples are email-open-rate and successful-delivery-rate. For a
list of valid values, see the <a
href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon
Pinpoint Developer Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_NextToken">NextToken</code></td>
<td><p>The string that specifies which page of results to return in a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_get_journey_date_range_kpi_:_StartTime">StartTime</code></td>
<td><p>The first date and time to retrieve data for, as part of an
inclusive date range that filters the query results. This value should
be in extended ISO 8601 format and use Coordinated Universal Time (UTC),
for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This
value should also be fewer than 90 days from the current day.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JourneyDateRangeKpiResponse = list(
        ApplicationId = "string",
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        JourneyId = "string",
        KpiName = "string",
        KpiResult = list(
          Rows = list(
            list(
              GroupedBys = list(
                list(
                  Key = "string",
                  Type = "string",
                  Value = "string"
                )
              ),
              Values = list(
                list(
                  Key = "string",
                  Type = "string",
                  Value = "string"
                )
              )
            )
          )
        ),
        NextToken = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_journey_date_range_kpi(
      ApplicationId = "string",
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      JourneyId = "string",
      KpiName = "string",
      NextToken = "string",
      PageSize = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      )
    )
