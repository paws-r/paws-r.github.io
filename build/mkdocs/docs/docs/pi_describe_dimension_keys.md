<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi_describe_dimension_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a specific time period, retrieve the top N dimension keys for a metric

### Description

For a specific time period, retrieve the top `N` dimension keys for a
metric.

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are returned.

### Usage

    pi_describe_dimension_keys(ServiceType, Identifier, StartTime, EndTime,
      Metric, PeriodInSeconds, GroupBy, AdditionalMetrics, PartitionBy,
      Filter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pi_describe_dimension_keys_:_ServiceType">ServiceType</code></td>
<td><p>[required] The Amazon Web Services service for which Performance
Insights will return metrics. Valid values are as follows:</p>
<ul>
<li><p><code>RDS</code></p></li>
<li><p><code>DOCDB</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="pi_describe_dimension_keys_:_Identifier">Identifier</code></td>
<td><p>[required] An immutable, Amazon Web Services Region-unique
identifier for a data source. Performance Insights gathers metrics from
this data source.</p>
<p>To use an Amazon RDS instance as a data source, you specify its
<code>DbiResourceId</code> value. For example, specify
<code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_describe_dimension_keys_:_StartTime">StartTime</code></td>
<td><p>[required] The date and time specifying the beginning of the
requested time series data. You must specify a <code>StartTime</code>
within the past 7 days. The value specified is <em>inclusive</em>, which
means that data points equal to or greater than <code>StartTime</code>
are returned.</p>
<p>The value for <code>StartTime</code> must be earlier than the value
for <code>EndTime</code>.</p></td>
</tr>
<tr class="even">
<td><code id="pi_describe_dimension_keys_:_EndTime">EndTime</code></td>
<td><p>[required] The date and time specifying the end of the requested
time series data. The value specified is <em>exclusive</em>, which means
that data points less than (but not equal to) <code>EndTime</code> are
returned.</p>
<p>The value for <code>EndTime</code> must be later than the value for
<code>StartTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="pi_describe_dimension_keys_:_Metric">Metric</code></td>
<td><p>[required] The name of a Performance Insights metric to be
measured.</p>
<p>Valid values for <code>Metric</code> are:</p>
<ul>
<li><p><code>db.load.avg</code> - A scaled representation of the number
of active sessions for the database engine.</p></li>
<li><p><code>db.sampledload.avg</code> - The raw number of active
sessions for the database engine.</p></li>
</ul>
<p>If the number of active sessions is less than an internal Performance
Insights threshold, <code>db.load.avg</code> and
<code>db.sampledload.avg</code> are the same value. If the number of
active sessions is greater than the internal threshold, Performance
Insights samples the active sessions, with <code>db.load.avg</code>
showing the scaled values, <code>db.sampledload.avg</code> showing the
raw values, and <code>db.sampledload.avg</code> less than
<code>db.load.avg</code>. For most use cases, you can query
<code>db.load.avg</code> only.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_describe_dimension_keys_:_PeriodInSeconds">PeriodInSeconds</code></td>
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
Insights chooses a value for you, with a goal of returning roughly
100-200 data points in the response.</p></td>
</tr>
<tr class="odd">
<td><code id="pi_describe_dimension_keys_:_GroupBy">GroupBy</code></td>
<td><p>[required] A specification for how to aggregate the data points
from a query result. You must specify a valid dimension group.
Performance Insights returns all dimensions within this group, unless
you provide the names of specific dimensions within this group. You can
also request that Performance Insights return a limited number of values
for a dimension.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_describe_dimension_keys_:_AdditionalMetrics">AdditionalMetrics</code></td>
<td><p>Additional metrics for the top <code>N</code> dimension keys. If
the specified dimension group in the <code>GroupBy</code> parameter is
<code>db.sql_tokenized</code>, you can specify per-SQL metrics to get
the values for the top <code>N</code> SQL digests. The response syntax
is as follows:
<code>"AdditionalMetrics" : { "string" : "string" }</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="pi_describe_dimension_keys_:_PartitionBy">PartitionBy</code></td>
<td><p>For each dimension specified in <code>GroupBy</code>, specify a
secondary dimension to further subdivide the partition keys in the
response.</p></td>
</tr>
<tr class="even">
<td><code id="pi_describe_dimension_keys_:_Filter">Filter</code></td>
<td><p>One or more filters to apply in the request. Restrictions:</p>
<ul>
<li><p>Any number of filters by the same dimension, as specified in the
<code>GroupBy</code> or <code>Partition</code> parameters.</p></li>
<li><p>A single filter for any other dimension in this dimension
group.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="pi_describe_dimension_keys_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response. If more
items exist than the specified <code>MaxRecords</code> value, a
pagination token is included in the response so that the remaining
results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="pi_describe_dimension_keys_:_NextToken">NextToken</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the token, up to the value specified by
<code>MaxRecords</code>.</p></td>
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
      PartitionKeys = list(
        list(
          Dimensions = list(
            "string"
          )
        )
      ),
      Keys = list(
        list(
          Dimensions = list(
            "string"
          ),
          Total = 123.0,
          AdditionalMetrics = list(
            123.0
          ),
          Partitions = list(
            123.0
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_dimension_keys(
      ServiceType = "RDS"|"DOCDB",
      Identifier = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Metric = "string",
      PeriodInSeconds = 123,
      GroupBy = list(
        Group = "string",
        Dimensions = list(
          "string"
        ),
        Limit = 123
      ),
      AdditionalMetrics = list(
        "string"
      ),
      PartitionBy = list(
        Group = "string",
        Dimensions = list(
          "string"
        ),
        Limit = 123
      ),
      Filter = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
