<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_log</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the log events of a container of your Amazon Lightsail container service

### Description

Returns the log events of a container of your Amazon Lightsail container
service.

If your container service has more than one node (i.e., a scale greater
than 1), then the log events that are returned for the specified
container are merged from all nodes on your container service.

Container logs are retained for a certain amount of time. For more
information, see [Amazon Lightsail endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in
the *Amazon Web Services General Reference*.

### Usage

    lightsail_get_container_log(serviceName, containerName, startTime,
      endTime, filterPattern, pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_container_log_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to get a
container log.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_container_log_:_containerName">containerName</code></td>
<td><p>[required] The name of the container that is either running or
previously ran on the container service for which to return a
log.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_container_log_:_startTime">startTime</code></td>
<td><p>The start of the time interval for which to get log data.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, specify <code>1538424000</code> as the start time.</p></li>
</ul>
<p>You can convert a human-friendly time to Unix time format using a
converter like <a href="https://www.epochconverter.com/">Epoch
converter</a>.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_get_container_log_:_endTime">endTime</code></td>
<td><p>The end of the time interval for which to get log data.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use an end time of October 1, 2018, at 9
PM UTC, specify <code>1538427600</code> as the end time.</p></li>
</ul>
<p>You can convert a human-friendly time to Unix time format using a
converter like <a href="https://www.epochconverter.com/">Epoch
converter</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_container_log_:_filterPattern">filterPattern</code></td>
<td><p>The pattern to use to filter the returned log events to a
specific term.</p>
<p>The following are a few examples of filter patterns that you can
specify:</p>
<ul>
<li><p>To return all log events, specify a filter pattern of
<code>""</code>.</p></li>
<li><p>To exclude log events that contain the <code>ERROR</code> term,
and return all other log events, specify a filter pattern of
<code>"-ERROR"</code>.</p></li>
<li><p>To return log events that contain the <code>ERROR</code> term,
specify a filter pattern of <code>"ERROR"</code>.</p></li>
<li><p>To return log events that contain both the <code>ERROR</code> and
<code>Exception</code> terms, specify a filter pattern of
<code>"ERROR Exception"</code>.</p></li>
<li><p>To return log events that contain the <code>ERROR</code>
<em>or</em> the <code>Exception</code> term, specify a filter pattern of
<code>"?ERROR ?Exception"</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_container_log_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_container_log</code> request. If your results are paginated,
the response will return a next page token that you can specify as the
page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logEvents = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          message = "string"
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_container_log(
      serviceName = "string",
      containerName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      filterPattern = "string",
      pageToken = "string"
    )
