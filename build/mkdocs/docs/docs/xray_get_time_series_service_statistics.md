<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_time_series_service_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get an aggregation of service statistics defined by a specific time range

### Description

Get an aggregation of service statistics defined by a specific time
range.

### Usage

    xray_get_time_series_service_statistics(StartTime, EndTime, GroupName,
      GroupARN, EntitySelectorExpression, Period, ForecastStatistics,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_get_time_series_service_statistics_:_StartTime">StartTime</code></td>
<td><p>[required] The start of the time frame for which to aggregate
statistics.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_time_series_service_statistics_:_EndTime">EndTime</code></td>
<td><p>[required] The end of the time frame for which to aggregate
statistics.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_time_series_service_statistics_:_GroupName">GroupName</code></td>
<td><p>The case-sensitive name of the group for which to pull statistics
from.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_time_series_service_statistics_:_GroupARN">GroupARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the group for which to pull
statistics from.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_time_series_service_statistics_:_EntitySelectorExpression">EntitySelectorExpression</code></td>
<td><p>A filter expression defining entities that will be aggregated for
statistics. Supports ID, service, and edge functions. If no selector
expression is specified, edge statistics are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_time_series_service_statistics_:_Period">Period</code></td>
<td><p>Aggregation period in seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_time_series_service_statistics_:_ForecastStatistics">ForecastStatistics</code></td>
<td><p>The forecasted high and low fault count values. Forecast enabled
requests require the EntitySelectorExpression ID be provided.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_time_series_service_statistics_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TimeSeriesServiceStatistics = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          EdgeSummaryStatistics = list(
            OkCount = 123,
            ErrorStatistics = list(
              ThrottleCount = 123,
              OtherCount = 123,
              TotalCount = 123
            ),
            FaultStatistics = list(
              OtherCount = 123,
              TotalCount = 123
            ),
            TotalCount = 123,
            TotalResponseTime = 123.0
          ),
          ServiceSummaryStatistics = list(
            OkCount = 123,
            ErrorStatistics = list(
              ThrottleCount = 123,
              OtherCount = 123,
              TotalCount = 123
            ),
            FaultStatistics = list(
              OtherCount = 123,
              TotalCount = 123
            ),
            TotalCount = 123,
            TotalResponseTime = 123.0
          ),
          ServiceForecastStatistics = list(
            FaultCountHigh = 123,
            FaultCountLow = 123
          ),
          ResponseTimeHistogram = list(
            list(
              Value = 123.0,
              Count = 123
            )
          )
        )
      ),
      ContainsOldGroupVersions = TRUE|FALSE,
      NextToken = "string"
    )

### Request syntax

    svc$get_time_series_service_statistics(
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      GroupName = "string",
      GroupARN = "string",
      EntitySelectorExpression = "string",
      Period = 123,
      ForecastStatistics = TRUE|FALSE,
      NextToken = "string"
    )
