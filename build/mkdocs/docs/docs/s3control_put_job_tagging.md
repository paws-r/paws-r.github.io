<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_job_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the supplied tag-set on an S3 Batch Operations job

### Description

Sets the supplied tag-set on an S3 Batch Operations job.

A tag is a key-value pair. You can associate S3 Batch Operations tags
with any job by sending a PUT request against the tagging subresource
that is associated with the job. To modify the existing tag set, you can
either replace the existing tag set entirely, or make changes within the
existing tag set by retrieving the existing tag set using
`get_job_tagging`, modify that tag set, and use this action to replace
the tag set with the one you modified. For more information, see
[Controlling access and labeling jobs using
tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops-managing-jobs.html#batch-ops-job-tags)
in the *Amazon S3 User Guide*.

-   If you send this request with an empty tag set, Amazon S3 deletes
    the existing tag set on the Batch Operations job. If you use this
    method, you are charged for a Tier 1 Request (PUT). For more
    information, see [Amazon S3
    pricing](https://aws.amazon.com/s3/pricing/).

-   For deleting existing tags for your Batch Operations job, a
    `delete_job_tagging` request is preferred because it achieves the
    same result without incurring charges.

-   A few things to consider about using tags:

    -   Amazon S3 limits the maximum number of tags to 50 tags per job.

    -   You can associate up to 50 tags with a job as long as they have
        unique tag keys.

    -   A tag key can be up to 128 Unicode characters in length, and tag
        values can be up to 256 Unicode characters in length.

    -   The key and values are case sensitive.

    -   For tagging-related restrictions related to characters and
        encodings, see [User-Defined Tag
        Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
        in the *Billing and Cost Management User Guide*.

To use the `put_job_tagging` operation, you must have permission to
perform the `s3:PutJobTagging` action.

Related actions include:

-   `create_job`

-   `get_job_tagging`

-   `delete_job_tagging`

### Usage

    s3control_put_job_tagging(AccountId, JobId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_job_tagging_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_put_job_tagging_:_JobId">JobId</code></td>
<td><p>[required] The ID for the S3 Batch Operations job whose tags you
want to replace.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_put_job_tagging_:_Tags">Tags</code></td>
<td><p>[required] The set of tags to associate with the S3 Batch
Operations job.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_job_tagging(
      AccountId = "string",
      JobId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
