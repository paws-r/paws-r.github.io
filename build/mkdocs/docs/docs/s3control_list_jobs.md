<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists current S3 Batch Operations jobs and jobs that have ended within the last 30 days for the Amazon Web Services account making the request

### Description

Lists current S3 Batch Operations jobs and jobs that have ended within
the last 30 days for the Amazon Web Services account making the request.
For more information, see [S3 Batch
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `describe_job`

-   `update_job_priority`

-   `update_job_status`

### Usage

    s3control_list_jobs(AccountId, JobStatuses, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_list_jobs_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_list_jobs_:_JobStatuses">JobStatuses</code></td>
<td><p>The <code style="white-space: pre;">⁠List Jobs⁠</code> request
returns jobs that match the statuses listed in this element.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_list_jobs_:_NextToken">NextToken</code></td>
<td><p>A pagination token to request the next page of results. Use the
token that Amazon S3 returned in the <code>NextToken</code> element of
the <code>ListJobsResult</code> from the previous <code
style="white-space: pre;">⁠List Jobs⁠</code> request.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_list_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of jobs that Amazon S3 will include in the
<code style="white-space: pre;">⁠List Jobs⁠</code> response. If there are
more jobs than this number, the response will include a pagination token
in the <code>NextToken</code> field to enable you to retrieve the next
page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Jobs = list(
        list(
          JobId = "string",
          Description = "string",
          Operation = "LambdaInvoke"|"S3PutObjectCopy"|"S3PutObjectAcl"|"S3PutObjectTagging"|"S3DeleteObjectTagging"|"S3InitiateRestoreObject"|"S3PutObjectLegalHold"|"S3PutObjectRetention"|"S3ReplicateObject",
          Priority = 123,
          Status = "Active"|"Cancelled"|"Cancelling"|"Complete"|"Completing"|"Failed"|"Failing"|"New"|"Paused"|"Pausing"|"Preparing"|"Ready"|"Suspended",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          TerminationDate = as.POSIXct(
            "2015-01-01"
          ),
          ProgressSummary = list(
            TotalNumberOfTasks = 123,
            NumberOfTasksSucceeded = 123,
            NumberOfTasksFailed = 123,
            Timers = list(
              ElapsedTimeInActiveSeconds = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$list_jobs(
      AccountId = "string",
      JobStatuses = list(
        "Active"|"Cancelled"|"Cancelling"|"Complete"|"Completing"|"Failed"|"Failing"|"New"|"Paused"|"Pausing"|"Preparing"|"Ready"|"Suspended"
      ),
      NextToken = "string",
      MaxResults = 123
    )
