<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_report_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about your report jobs

### Description

Returns details about your report jobs.

### Usage

    backup_list_report_jobs(ByReportPlanName, ByCreationBefore,
      ByCreationAfter, ByStatus, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_report_jobs_:_ByReportPlanName">ByReportPlanName</code></td>
<td><p>Returns only report jobs with the specified report plan
name.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_report_jobs_:_ByCreationBefore">ByCreationBefore</code></td>
<td><p>Returns only report jobs that were created before the date and
time specified in Unix format and Coordinated Universal Time (UTC). For
example, the value 1516925490 represents Friday, January 26, 2018
12:11:30 AM.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_report_jobs_:_ByCreationAfter">ByCreationAfter</code></td>
<td><p>Returns only report jobs that were created after the date and
time specified in Unix format and Coordinated Universal Time (UTC). For
example, the value 1516925490 represents Friday, January 26, 2018
12:11:30 AM.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_report_jobs_:_ByStatus">ByStatus</code></td>
<td><p>Returns only report jobs that are in the specified status. The
statuses are:</p>
<p><code>CREATED | RUNNING | COMPLETED | FAILED</code></p></td>
</tr>
<tr class="odd">
<td><code
id="backup_list_report_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The number of desired results from 1 to 1000. Optional. If
unspecified, the query will return 1 MB of data.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_report_jobs_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportJobs = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_report_jobs(
      ByReportPlanName = "string",
      ByCreationBefore = as.POSIXct(
        "2015-01-01"
      ),
      ByCreationAfter = as.POSIXct(
        "2015-01-01"
      ),
      ByStatus = "string",
      MaxResults = 123,
      NextToken = "string"
    )
