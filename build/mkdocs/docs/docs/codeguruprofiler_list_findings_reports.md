<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_list_findings_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the available reports for a given profiling group and time range

### Description

List the available reports for a given profiling group and time range.

### Usage

    codeguruprofiler_list_findings_reports(dailyReportsOnly, endTime,
      maxResults, nextToken, profilingGroupName, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_list_findings_reports_:_dailyReportsOnly">dailyReportsOnly</code></td>
<td><p>A <code>Boolean</code> value indicating whether to only return
reports from daily profiles. If set to <code>True</code>, only analysis
data from daily profiles is returned. If set to <code>False</code>,
analysis data is returned from smaller time windows (for example, one
hour).</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_findings_reports_:_endTime">endTime</code></td>
<td><p>[required] The end time of the profile to get analysis data
about. You must specify <code>startTime</code> and <code>endTime</code>.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_findings_reports_:_maxResults">maxResults</code></td>
<td><p>The maximum number of report results returned by
<code>list_findings_reports</code> in paginated output. When this
parameter is used, <code>list_findings_reports</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_findings_reports</code> request with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_findings_reports_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>ListFindingsReportsRequest</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_list_findings_reports_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group from which to search
for analysis data.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_list_findings_reports_:_startTime">startTime</code></td>
<td><p>[required] The start time of the profile to get analysis data
about. You must specify <code>startTime</code> and <code>endTime</code>.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findingsReportSummaries = list(
        list(
          id = "string",
          profileEndTime = as.POSIXct(
            "2015-01-01"
          ),
          profileStartTime = as.POSIXct(
            "2015-01-01"
          ),
          profilingGroupName = "string",
          totalNumberOfFindings = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_findings_reports(
      dailyReportsOnly = TRUE|FALSE,
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      maxResults = 123,
      nextToken = "string",
      profilingGroupName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
