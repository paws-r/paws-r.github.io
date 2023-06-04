<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_batch_get_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of reports

### Description

Returns an array of reports.

### Usage

    codebuild_batch_get_reports(reportArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_batch_get_reports_:_reportArns">reportArns</code></td>
<td><p>[required] An array of ARNs that identify the <code>Report</code>
objects to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reports = list(
        list(
          arn = "string",
          type = "TEST"|"CODE_COVERAGE",
          name = "string",
          reportGroupArn = "string",
          executionId = "string",
          status = "GENERATING"|"SUCCEEDED"|"FAILED"|"INCOMPLETE"|"DELETING",
          created = as.POSIXct(
            "2015-01-01"
          ),
          expired = as.POSIXct(
            "2015-01-01"
          ),
          exportConfig = list(
            exportConfigType = "S3"|"NO_EXPORT",
            s3Destination = list(
              bucket = "string",
              bucketOwner = "string",
              path = "string",
              packaging = "ZIP"|"NONE",
              encryptionKey = "string",
              encryptionDisabled = TRUE|FALSE
            )
          ),
          truncated = TRUE|FALSE,
          testSummary = list(
            total = 123,
            statusCounts = list(
              123
            ),
            durationInNanoSeconds = 123
          ),
          codeCoverageSummary = list(
            lineCoveragePercentage = 123.0,
            linesCovered = 123,
            linesMissed = 123,
            branchCoveragePercentage = 123.0,
            branchesCovered = 123,
            branchesMissed = 123
          )
        )
      ),
      reportsNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_reports(
      reportArns = list(
        "string"
      )
    )
