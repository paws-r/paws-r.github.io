<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_update_job_priority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing S3 Batch Operations job's priority

### Description

Updates an existing S3 Batch Operations job's priority. For more
information, see [S3 Batch
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `list_jobs`

-   `describe_job`

-   `update_job_status`

### Usage

    s3control_update_job_priority(AccountId, JobId, Priority)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_update_job_priority_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_update_job_priority_:_JobId">JobId</code></td>
<td><p>[required] The ID for the job whose priority you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_update_job_priority_:_Priority">Priority</code></td>
<td><p>[required] The priority you want to assign to this job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      Priority = 123
    )

### Request syntax

    svc$update_job_priority(
      AccountId = "string",
      JobId = "string",
      Priority = 123
    )
