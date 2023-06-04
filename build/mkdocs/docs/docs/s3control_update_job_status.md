<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_update_job_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status for the specified job

### Description

Updates the status for the specified job. Use this action to confirm
that you want to run a job or to cancel an existing job. For more
information, see [S3 Batch
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `list_jobs`

-   `describe_job`

-   `update_job_status`

### Usage

    s3control_update_job_status(AccountId, JobId, RequestedJobStatus,
      StatusUpdateReason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_update_job_status_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_update_job_status_:_JobId">JobId</code></td>
<td><p>[required] The ID of the job whose status you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_update_job_status_:_RequestedJobStatus">RequestedJobStatus</code></td>
<td><p>[required] The status that you want to move the specified job
to.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_update_job_status_:_StatusUpdateReason">StatusUpdateReason</code></td>
<td><p>A description of the reason why you want to change the specified
job's status. This field can be any string up to the maximum
length.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      Status = "Active"|"Cancelled"|"Cancelling"|"Complete"|"Completing"|"Failed"|"Failing"|"New"|"Paused"|"Pausing"|"Preparing"|"Ready"|"Suspended",
      StatusUpdateReason = "string"
    )

### Request syntax

    svc$update_job_status(
      AccountId = "string",
      JobId = "string",
      RequestedJobStatus = "Cancelled"|"Ready",
      StatusUpdateReason = "string"
    )
