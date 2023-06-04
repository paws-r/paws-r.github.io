<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_list_profile_times</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range

### Description

Lists the start times of the available aggregated profiles of a
profiling group for an aggregation period within the specified time
range.

### Usage

    codeguruprofiler_list_profile_times(endTime, maxResults, nextToken,
      orderBy, period, profilingGroupName, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profile_times_:_endTime">endTime</code></td>
<td><p>[required] The end time of the time range from which to list the
profiles.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_profile_times_:_maxResults">maxResults</code></td>
<td><p>The maximum number of profile time results returned by
<code>list_profile_times</code> in paginated output. When this parameter
is used, <code>list_profile_times</code> only returns
<code>maxResults</code> results in a single page with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_profile_times</code> request with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profile_times_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_profile_times</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_profile_times_:_orderBy">orderBy</code></td>
<td><p>The order (ascending or descending by start time of the profile)
to use when listing profiles. Defaults to
<code>TIMESTAMP_DESCENDING</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profile_times_:_period">period</code></td>
<td><p>[required] The aggregation period. This specifies the period
during which an aggregation profile collects posted agent profiles for a
profiling group. There are 3 valid values.</p>
<ul>
<li><p><code>P1D</code> — 1 day</p></li>
<li><p><code>PT1H</code> — 1 hour</p></li>
<li><p><code>PT5M</code> — 5 minutes</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_profile_times_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_profile_times_:_startTime">startTime</code></td>
<td><p>[required] The start time of the time range from which to list
the profiles.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      profileTimes = list(
        list(
          start = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_profile_times(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      maxResults = 123,
      nextToken = "string",
      orderBy = "TimestampDescending"|"TimestampAscending",
      period = "PT5M"|"PT1H"|"P1D",
      profilingGroupName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
