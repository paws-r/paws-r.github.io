<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_describe_code_coverages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves one or more code coverage reports

### Description

Retrieves one or more code coverage reports.

### Usage

    codebuild_describe_code_coverages(reportArn, nextToken, maxResults,
      sortOrder, sortBy, minLineCoveragePercentage, maxLineCoveragePercentage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_describe_code_coverages_:_reportArn">reportArn</code></td>
<td><p>[required] The ARN of the report for which test cases are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_describe_code_coverages_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous call to
<code>describe_code_coverages</code>. This specifies the next item to
return. To return the beginning of the list, exclude this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_describe_code_coverages_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_describe_code_coverages_:_sortOrder">sortOrder</code></td>
<td><p>Specifies if the results are sorted in ascending or descending
order.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_describe_code_coverages_:_sortBy">sortBy</code></td>
<td><p>Specifies how the results are sorted. Possible values are:</p>
<p><strong>FILE_PATH</strong></p>
<p>The results are sorted by file path.</p>
<p><strong>LINE_COVERAGE_PERCENTAGE</strong></p>
<p>The results are sorted by the percentage of lines that are
covered.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_describe_code_coverages_:_minLineCoveragePercentage">minLineCoveragePercentage</code></td>
<td><p>The minimum line coverage percentage to report.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_describe_code_coverages_:_maxLineCoveragePercentage">maxLineCoveragePercentage</code></td>
<td><p>The maximum line coverage percentage to report.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      codeCoverages = list(
        list(
          id = "string",
          reportARN = "string",
          filePath = "string",
          lineCoveragePercentage = 123.0,
          linesCovered = 123,
          linesMissed = 123,
          branchCoveragePercentage = 123.0,
          branchesCovered = 123,
          branchesMissed = 123,
          expired = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_code_coverages(
      reportArn = "string",
      nextToken = "string",
      maxResults = 123,
      sortOrder = "ASCENDING"|"DESCENDING",
      sortBy = "LINE_COVERAGE_PERCENTAGE"|"FILE_PATH",
      minLineCoveragePercentage = 123.0,
      maxLineCoveragePercentage = 123.0
    )
