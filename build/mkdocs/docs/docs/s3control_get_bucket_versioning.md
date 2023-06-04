<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_bucket_versioning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns the versioning state for S3 on Outposts buckets only

### Description

This operation returns the versioning state for S3 on Outposts buckets
only. To return the versioning state for an S3 bucket, see
`get_bucket_versioning` in the *Amazon S3 API Reference*.

Returns the versioning state for an S3 on Outposts bucket. With S3
Versioning, you can save multiple distinct copies of your objects and
recover from unintended user actions and application failures.

If you've never set versioning on your bucket, it has no versioning
state. In that case, the `get_bucket_versioning` request does not return
a versioning state value.

For more information about versioning, see
[Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
in the *Amazon S3 User Guide*.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples)
section.

The following operations are related to `get_bucket_versioning` for S3
on Outposts.

-   `put_bucket_versioning`

-   `put_bucket_lifecycle_configuration`

-   `get_bucket_lifecycle_configuration`

### Usage

    s3control_get_bucket_versioning(AccountId, Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_bucket_versioning_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the S3 on
Outposts bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_bucket_versioning_:_Bucket">Bucket</code></td>
<td><p>[required] The S3 on Outposts bucket to return the versioning
state for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "Enabled"|"Suspended",
      MFADelete = "Enabled"|"Disabled"
    )

### Request syntax

    svc$get_bucket_versioning(
      AccountId = "string",
      Bucket = "string"
    )
