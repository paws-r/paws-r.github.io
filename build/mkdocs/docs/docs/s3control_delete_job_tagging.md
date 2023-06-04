<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_delete_job_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the entire tag set from the specified S3 Batch Operations job

### Description

Removes the entire tag set from the specified S3 Batch Operations job.
To use the `delete_job_tagging` operation, you must have permission to
perform the `s3:DeleteJobTagging` action. For more information, see
[Controlling access and labeling jobs using
tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `get_job_tagging`

-   `put_job_tagging`

### Usage

    s3control_delete_job_tagging(AccountId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_delete_job_tagging_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_delete_job_tagging_:_JobId">JobId</code></td>
<td><p>[required] The ID for the S3 Batch Operations job whose tags you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_job_tagging(
      AccountId = "string",
      JobId = "string"
    )
