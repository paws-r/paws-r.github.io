<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_report_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details associated with creating a report as specified by its ReportJobId

### Description

Returns the details associated with creating a report as specified by
its `ReportJobId`.

### Usage

    backup_describe_report_job(ReportJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_report_job_:_ReportJobId">ReportJobId</code></td>
<td><p>[required] The identifier of the report job. A unique, randomly
generated, Unicode, UTF-8 encoded string that is at most 1,024 bytes
long. The report job ID cannot be edited.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportJob = list(
        ReportJobId = "string",
        ReportPlanArn = "string",
        ReportTemplate = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        CompletionTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "string",
        StatusMessage = "string",
        ReportDestination = list(
          S3BucketName = "string",
          S3Keys = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_report_job(
      ReportJobId = "string"
    )
