<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_get_report_group_trend</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Analyzes and accumulates test report values for the specified test reports

### Description

Analyzes and accumulates test report values for the specified test
reports.

### Usage

    codebuild_get_report_group_trend(reportGroupArn, numOfReports,
      trendField)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_get_report_group_trend_:_reportGroupArn">reportGroupArn</code></td>
<td><p>[required] The ARN of the report group that contains the reports
to analyze.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_get_report_group_trend_:_numOfReports">numOfReports</code></td>
<td><p>The number of reports to analyze. This operation always retrieves
the most recent reports.</p>
<p>If this parameter is omitted, the most recent 100 reports are
analyzed.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_get_report_group_trend_:_trendField">trendField</code></td>
<td><p>[required] The test report value to accumulate. This must be one
of the following values:</p>
<p><strong>Test reports:</strong></p>
<p><strong>DURATION</strong></p>
<p>Accumulate the test run times for the specified reports.</p>
<p><strong>PASS_RATE</strong></p>
<p>Accumulate the percentage of tests that passed for the specified test
reports.</p>
<p><strong>TOTAL</strong></p>
<p>Accumulate the total number of tests for the specified test
reports.</p>
<p><strong>Code coverage reports:</strong></p>
<p><strong>BRANCH_COVERAGE</strong></p>
<p>Accumulate the branch coverage percentages for the specified test
reports.</p>
<p><strong>BRANCHES_COVERED</strong></p>
<p>Accumulate the branches covered values for the specified test
reports.</p>
<p><strong>BRANCHES_MISSED</strong></p>
<p>Accumulate the branches missed values for the specified test
reports.</p>
<p><strong>LINE_COVERAGE</strong></p>
<p>Accumulate the line coverage percentages for the specified test
reports.</p>
<p><strong>LINES_COVERED</strong></p>
<p>Accumulate the lines covered values for the specified test
reports.</p>
<p><strong>LINES_MISSED</strong></p>
<p>Accumulate the lines not covered values for the specified test
reports.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stats = list(
        average = "string",
        max = "string",
        min = "string"
      ),
      rawData = list(
        list(
          reportArn = "string",
          data = "string"
        )
      )
    )

### Request syntax

    svc$get_report_group_trend(
      reportGroupArn = "string",
      numOfReports = 123,
      trendField = "PASS_RATE"|"DURATION"|"TOTAL"|"LINE_COVERAGE"|"LINES_COVERED"|"LINES_MISSED"|"BRANCH_COVERAGE"|"BRANCHES_COVERED"|"BRANCHES_MISSED"
    )
