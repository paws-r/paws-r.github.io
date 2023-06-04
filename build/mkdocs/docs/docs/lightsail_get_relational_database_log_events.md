<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_log_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of log events for a database in Amazon Lightsail

### Description

Returns a list of log events for a database in Amazon Lightsail.

### Usage

    lightsail_get_relational_database_log_events(relationalDatabaseName,
      logStreamName, startTime, endTime, startFromHead, pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_log_events_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of your database for which to get log
events.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_log_events_:_logStreamName">logStreamName</code></td>
<td><p>[required] The name of the log stream.</p>
<p>Use the <code
style="white-space: pre;">⁠get relational database log streams⁠</code>
operation to get a list of available log streams.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_log_events_:_startTime">startTime</code></td>
<td><p>The start of the time interval from which to get log events.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, then you input <code>1538424000</code> as the start
time.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_log_events_:_endTime">endTime</code></td>
<td><p>The end of the time interval from which to get log events.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use an end time of October 1, 2018, at 8
PM UTC, then you input <code>1538424000</code> as the end time.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_log_events_:_startFromHead">startFromHead</code></td>
<td><p>Parameter to specify if the log should start from head or tail.
If <code>true</code> is specified, the log event starts from the head of
the log. If <code>false</code> is specified, the log event starts from
the tail of the log.</p>
<p>For PostgreSQL, the default value of <code>false</code> is the only
option available.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_log_events_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next or previous page of results from
your request.</p>
<p>To get a page token, perform an initial
<code>get_relational_database_log_events</code> request. If your results
are paginated, the response will return a next forward token and/or next
backward token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceLogEvents = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          message = "string"
        )
      ),
      nextBackwardToken = "string",
      nextForwardToken = "string"
    )

### Request syntax

    svc$get_relational_database_log_events(
      relationalDatabaseName = "string",
      logStreamName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      startFromHead = TRUE|FALSE,
      pageToken = "string"
    )
