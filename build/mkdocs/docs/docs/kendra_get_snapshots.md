<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_get_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves search metrics data

### Description

Retrieves search metrics data. The data provides a snapshot of how your
users interact with your search application and how effective the
application is.

### Usage

    kendra_get_snapshots(IndexId, Interval, MetricType, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_get_snapshots_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index to get search metrics
data.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_get_snapshots_:_Interval">Interval</code></td>
<td><p>[required] The time interval or time window to get search metrics
data. The time interval uses the time zone of your index. You can view
data in the following time windows:</p>
<ul>
<li><p><code>THIS_WEEK</code>: The current week, starting on the Sunday
and ending on the day before the current date.</p></li>
<li><p><code>ONE_WEEK_AGO</code>: The previous week, starting on the
Sunday and ending on the following Saturday.</p></li>
<li><p><code>TWO_WEEKS_AGO</code>: The week before the previous week,
starting on the Sunday and ending on the following Saturday.</p></li>
<li><p><code>THIS_MONTH</code>: The current month, starting on the first
day of the month and ending on the day before the current date.</p></li>
<li><p><code>ONE_MONTH_AGO</code>: The previous month, starting on the
first day of the month and ending on the last day of the month.</p></li>
<li><p><code>TWO_MONTHS_AGO</code>: The month before the previous month,
starting on the first day of the month and ending on last day of the
month.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="kendra_get_snapshots_:_MetricType">MetricType</code></td>
<td><p>[required] The metric you want to retrieve. You can specify only
one metric per call.</p>
<p>For more information about the metrics you can view, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html">Gaining
insights with search analytics</a>.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_get_snapshots_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
search metrics data.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_get_snapshots_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of returned data for the metric.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapShotTimeFilter = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      SnapshotsDataHeader = list(
        "string"
      ),
      SnapshotsData = list(
        list(
          "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_snapshots(
      IndexId = "string",
      Interval = "THIS_MONTH"|"THIS_WEEK"|"ONE_WEEK_AGO"|"TWO_WEEKS_AGO"|"ONE_MONTH_AGO"|"TWO_MONTHS_AGO",
      MetricType = "QUERIES_BY_COUNT"|"QUERIES_BY_ZERO_CLICK_RATE"|"QUERIES_BY_ZERO_RESULT_RATE"|"DOCS_BY_CLICK_COUNT"|"AGG_QUERY_DOC_METRICS"|"TREND_QUERY_DOC_METRICS",
      NextToken = "string",
      MaxResults = 123
    )
