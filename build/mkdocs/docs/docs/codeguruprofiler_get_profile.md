<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_get_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the aggregated profile of a profiling group for a specified time range

### Description

Gets the aggregated profile of a profiling group for a specified time
range. Amazon CodeGuru Profiler collects posted agent profiles for a
profiling group into aggregated profiles.

     <note> <p> Because aggregated profiles expire over time <code>GetProfile</code> is not idempotent. </p> </note> <p> Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: <code>startTime</code>, <code>endTime</code>, <code>period</code>. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only <code>period</code>, the latest aggregated profile is returned. </p> <p> Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html"> <code>AggregatedProfileTime</code> </a>. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. </p> <ul> <li> <p> If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. </p> </li> <li> <p> If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. </p> </li> <li> <p> If the aggregation period is 1 day, the aggregated profile is retained for 3 years. </p> </li> </ul> <p>There are two use cases for calling <code>GetProfile</code>.</p> <ol> <li> <p> If you want to return an aggregated profile that already exists, use <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html"> <code>ListProfileTimes</code> </a> to view the time ranges of existing aggregated profiles. Use them in a <code>GetProfile</code> request to return a specific, existing aggregated profile. </p> </li> <li> <p> If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. </p> <p> If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. </p> </li> </ol> 

### Usage

    codeguruprofiler_get_profile(accept, endTime, maxDepth, period,
      profilingGroupName, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeguruprofiler_get_profile_:_accept">accept</code></td>
<td><p>The format of the returned profiling data. The format maps to the
<code>Accept</code> and <code>Content-Type</code> headers of the HTTP
request. You can specify one of the following: or the default .</p>
<div class="sourceCode">
<pre><code> &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/json&lt;/code&gt; — standard JSON format &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/x-amzn-ion&lt;/code&gt; — the Amazon Ion data format. For more information, see &lt;a href=&quot;http://amzn.github.io/ion-docs/&quot;&gt;Amazon Ion&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;</code></pre>
</div></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_get_profile_:_endTime">endTime</code></td>
<td><p>The end time of the requested profile. Specify using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.</p>
<p>If you specify <code>endTime</code>, then you must also specify
<code>period</code> or <code>startTime</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_get_profile_:_maxDepth">maxDepth</code></td>
<td><p>The maximum depth of the stacks in the code that is represented
in the aggregated profile. For example, if CodeGuru Profiler finds a
method <code>A</code>, which calls method <code>B</code>, which calls
method <code>C</code>, which calls method <code>D</code>, then the depth
is 4. If the <code>maxDepth</code> is set to 2, then the aggregated
profile contains representations of methods <code>A</code> and
<code>B</code>.</p></td>
</tr>
<tr class="even">
<td><code id="codeguruprofiler_get_profile_:_period">period</code></td>
<td><p>Used with <code>startTime</code> or <code>endTime</code> to
specify the time range for the returned aggregated profile. Specify
using the ISO 8601 format. For example, <code>P1DT1H1M1S</code>.</p>
<div class="sourceCode">
<pre><code> &lt;p&gt; To get the latest aggregated profile, specify only &lt;code&gt;period&lt;/code&gt;. &lt;/p&gt;</code></pre>
</div></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_get_profile_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to get.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_get_profile_:_startTime">startTime</code></td>
<td><p>The start time of the profile to get. Specify using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.</p>
<div class="sourceCode">
<pre><code> &lt;p&gt; If you specify &lt;code&gt;startTime&lt;/code&gt;, then you must also specify &lt;code&gt;period&lt;/code&gt; or &lt;code&gt;endTime&lt;/code&gt;, but not both. &lt;/p&gt;</code></pre>
</div></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentEncoding = "string",
      contentType = "string",
      profile = raw
    )

### Request syntax

    svc$get_profile(
      accept = "string",
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      maxDepth = 123,
      period = "string",
      profilingGroupName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
