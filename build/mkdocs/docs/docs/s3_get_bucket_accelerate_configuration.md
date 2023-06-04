<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_accelerate_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This implementation of the GET action uses the accelerate subresource to return the Transfer Acceleration state of a bucket, which is either Enabled or Suspended

### Description

This implementation of the GET action uses the `accelerate` subresource
to return the Transfer Acceleration state of a bucket, which is either
`Enabled` or `Suspended`. Amazon S3 Transfer Acceleration is a
bucket-level feature that enables you to perform faster data transfers
to and from Amazon S3.

To use this operation, you must have permission to perform the
`s3:GetAccelerateConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

You set the Transfer Acceleration state of an existing bucket to
`Enabled` or `Suspended` by using the
`put_bucket_accelerate_configuration` operation.

A GET `accelerate` request does not return a state value for a bucket
that has no transfer acceleration state. A bucket has no Transfer
Acceleration state if a state has never been set on the bucket.

For more information about transfer acceleration, see [Transfer
Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html)
in the Amazon S3 User Guide.

The following operations are related to
`get_bucket_accelerate_configuration`:

-   `put_bucket_accelerate_configuration`

### Usage

    s3_get_bucket_accelerate_configuration(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_get_bucket_accelerate_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which the accelerate
configuration is retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_accelerate_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "Enabled"|"Suspended"
    )

### Request syntax

    svc$get_bucket_accelerate_configuration(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
