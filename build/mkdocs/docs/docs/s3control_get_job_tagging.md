<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_job_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the tags on an S3 Batch Operations job

### Description

Returns the tags on an S3 Batch Operations job. To use the
`get_job_tagging` operation, you must have permission to perform the
`s3:GetJobTagging` action. For more information, see [Controlling access
and labeling jobs using
tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `put_job_tagging`

-   `delete_job_tagging`

### Usage

    s3control_get_job_tagging(AccountId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_job_tagging_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_get_job_tagging_:_JobId">JobId</code></td>
<td><p>[required] The ID for the S3 Batch Operations job whose tags you
want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_job_tagging(
      AccountId = "string",
      JobId = "string"
    )
