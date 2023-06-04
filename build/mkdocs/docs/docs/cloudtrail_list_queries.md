<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_queries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of queries and query statuses for the past seven days

### Description

Returns a list of queries and query statuses for the past seven days.
You must specify an ARN value for `EventDataStore`. Optionally, to
shorten the list of results, you can specify a time range, formatted as
timestamps, by adding `StartTime` and `EndTime` parameters, and a
`QueryStatus` value. Valid values for `QueryStatus` include `QUEUED`,
`RUNNING`, `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`.

### Usage

    cloudtrail_list_queries(EventDataStore, NextToken, MaxResults,
      StartTime, EndTime, QueryStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_queries_:_EventDataStore">EventDataStore</code></td>
<td><p>[required] The ARN (or the ID suffix of the ARN) of an event data
store on which queries were run.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_list_queries_:_NextToken">NextToken</code></td>
<td><p>A token you can use to get the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_list_queries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of queries to show on a page.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_list_queries_:_StartTime">StartTime</code></td>
<td><p>Use with <code>EndTime</code> to bound a
<code>list_queries</code> request, and limit its results to only those
queries run within a specified time period.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudtrail_list_queries_:_EndTime">EndTime</code></td>
<td><p>Use with <code>StartTime</code> to bound a
<code>list_queries</code> request, and limit its results to only those
queries run within a specified time period.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_list_queries_:_QueryStatus">QueryStatus</code></td>
<td><p>The status of queries that you want to return in results. Valid
values for <code>QueryStatus</code> include <code>QUEUED</code>,
<code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>,
<code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Queries = list(
        list(
          QueryId = "string",
          QueryStatus = "QUEUED"|"RUNNING"|"FINISHED"|"FAILED"|"CANCELLED"|"TIMED_OUT",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_queries(
      EventDataStore = "string",
      NextToken = "string",
      MaxResults = 123,
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      QueryStatus = "QUEUED"|"RUNNING"|"FINISHED"|"FAILED"|"CANCELLED"|"TIMED_OUT"
    )
