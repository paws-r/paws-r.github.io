<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_aws_network_performance_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets network performance data

### Description

Gets network performance data.

### Usage

    ec2_get_aws_network_performance_data(DataQueries, StartTime, EndTime,
      MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_aws_network_performance_data_:_DataQueries">DataQueries</code></td>
<td><p>A list of network performance data queries.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_aws_network_performance_data_:_StartTime">StartTime</code></td>
<td><p>The starting time for the performance data request. The starting
time must be formatted as <code>yyyy-mm-ddThh:mm:ss</code>. For example,
<code
style="white-space: pre;">⁠2022-06-10T12:00:00.000Z⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_aws_network_performance_data_:_EndTime">EndTime</code></td>
<td><p>The ending time for the performance data request. The end time
must be formatted as <code>yyyy-mm-ddThh:mm:ss</code>. For example,
<code
style="white-space: pre;">⁠2022-06-12T12:00:00.000Z⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_aws_network_performance_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_aws_network_performance_data_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_aws_network_performance_data_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataResponses = list(
        list(
          Id = "string",
          Source = "string",
          Destination = "string",
          Metric = "aggregate-latency",
          Statistic = "p50",
          Period = "five-minutes"|"fifteen-minutes"|"one-hour"|"three-hours"|"one-day"|"one-week",
          MetricPoints = list(
            list(
              StartDate = as.POSIXct(
                "2015-01-01"
              ),
              EndDate = as.POSIXct(
                "2015-01-01"
              ),
              Value = 123.0,
              Status = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_aws_network_performance_data(
      DataQueries = list(
        list(
          Id = "string",
          Source = "string",
          Destination = "string",
          Metric = "aggregate-latency",
          Statistic = "p50",
          Period = "five-minutes"|"fifteen-minutes"|"one-hour"|"three-hours"|"one-day"|"one-week"
        )
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
