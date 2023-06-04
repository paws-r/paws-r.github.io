<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_get_resource_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve Performance Insights metrics for a set of data sources over a time period

### Description

Retrieve Performance Insights metrics for a set of data sources over a
time period. You can provide specific dimension groups and dimensions,
and provide aggregation and filtering criteria for each group.

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are returned.

### Usage

    pi_get_resource_metrics(ServiceType, Identifier, MetricQueries,
      StartTime, EndTime, PeriodInSeconds, MaxResults, NextToken,
      PeriodAlignment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_get_resource_metrics_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights returns metrics. Valid values are as follows:</p>
<ul>
<li><p><code>RDS</code></p></li>
<li><p><code>DOCDB</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="pi_get_resource_metrics_:_Identifier">Identifier</code></td>
<td><p>[required] An immutable identifier for a data source that is
unique for an Amazon Web Services Region. Performance Insights gathers
metrics from this data source. In the console, the identifier is shown
as <em>ResourceID</em>. When you call <code>DescribeDBInstances</code>,
the identifier is returned as <code>DbiResourceId</code>.</p>
<p>To use a DB instance as a data source, specify its
<code>DbiResourceId</code> value. For example, specify
<code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_get_resource_metrics_:_MetricQueries">MetricQueries</code></td>
<td><p>[required] An array of one or more queries to perform. Each query
must specify a Performance Insights metric, and can optionally specify
aggregation and filtering criteria.</p></td>
</tr>
<tr class="even">
<td><code id="pi_get_resource_metrics_:_StartTime">StartTime</code></td>
<td><p>[required] The date and time specifying the beginning of the
requested time series query range. You can't specify a
<code>StartTime</code> that is earlier than 7 days ago. By default,
Performance Insights has 7 days of retention, but you can extend this
range up to 2 years. The value specified is <em>inclusive</em>. Thus,
the command returns data points equal to or greater than
<code>StartTime</code>.</p>
<p>The value for <code>StartTime</code> must be earlier than the value
for <code>EndTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="pi_get_resource_metrics_:_EndTime">EndTime</code></td>
<td><p>[required] The date and time specifying the end of the requested
time series query range. The value specified is <em>exclusive</em>.
Thus, the command returns data points less than (but not equal to)
<code>EndTime</code>.</p>
<p>The value for <code>EndTime</code> must be later than the value for
<code>StartTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_get_resource_metrics_:_PeriodInSeconds">PeriodInSeconds</code></td>
<td><p>The granularity, in seconds, of the data points returned from
Performance Insights. A period can be as short as one second, or as long
as one day (86400 seconds). Valid values are:</p>
<ul>
<li><p><code>1</code> (one second)</p></li>
<li><p><code>60</code> (one minute)</p></li>
<li><p><code>300</code> (five minutes)</p></li>
<li><p><code>3600</code> (one hour)</p></li>
<li><p><code>86400</code> (twenty-four hours)</p></li>
</ul>
<p>If you don't specify <code>PeriodInSeconds</code>, then Performance
Insights will choose a value for you, with a goal of returning roughly
100-200 data points in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_get_resource_metrics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response. If more
items exist than the specified <code>MaxRecords</code> value, a
pagination token is included in the response so that the remaining
results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code id="pi_get_resource_metrics_:_NextToken">NextToken</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the token, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_get_resource_metrics_:_PeriodAlignment">PeriodAlignment</code></td>
<td><p>The returned timestamp which is the start or end time of the time
periods. The default value is <code>END_TIME</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlignedStartTime = as.POSIXct(
        "2015-01-01"
      ),
      AlignedEndTime = as.POSIXct(
        "2015-01-01"
      ),
      Identifier = "string",
      MetricList = list(
        list(
          Key = list(
            Metric = "string",
            Dimensions = list(
              "string"
            )
          ),
          DataPoints = list(
            list(
              Timestamp = as.POSIXct(
                "2015-01-01"
              ),
              Value = 123.0
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_resource_metrics(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string",
      MetricQueries = list(
        list(
          Metric = "string",
          GroupBy = list(
            Group = "string",
            Dimensions = list(
              "string"
            ),
            Limit = 123
          ),
          Filter = list(
            "string"
          )
        )
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      PeriodInSeconds = 123,
      MaxResults = 123,
      NextToken = "string",
      PeriodAlignment = "END_TIME"|"START_TIME"
    )
