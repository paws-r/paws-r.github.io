<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_get_findings_report_account_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of FindingsReportSummary objects that contain analysis results for all profiling groups in your AWS account

### Description

Returns a list of
[`FindingsReportSummary`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)
objects that contain analysis results for all profiling groups in your
AWS account.

### Usage

    codeguruprofiler_get_findings_report_account_summary(dailyReportsOnly,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_get_findings_report_account_summary_:_dailyReportsOnly">dailyReportsOnly</code></td>
<td><p>A <code>Boolean</code> value indicating whether to only return
reports from daily profiles. If set to <code>True</code>, only analysis
data from daily profiles is returned. If set to <code>False</code>,
analysis data is returned from smaller time windows (for example, one
hour).</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_get_findings_report_account_summary_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results returned by
<code>get_findings_report_account_summary</code> in paginated output.
When this parameter is used,
<code>get_findings_report_account_summary</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>get_findings_report_account_summary</code> request with the
returned <code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_get_findings_report_account_summary_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>get_findings_report_account_summary</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      reportSummaries = list(
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
      )
    )

### Request syntax

    svc$get_findings_report_account_summary(
      dailyReportsOnly = TRUE|FALSE,
      maxResults = 123,
      nextToken = "string"
    )
