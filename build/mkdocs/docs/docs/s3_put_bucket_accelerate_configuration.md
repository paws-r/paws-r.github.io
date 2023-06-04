<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_accelerate_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the accelerate configuration of an existing bucket

### Description

Sets the accelerate configuration of an existing bucket. Amazon S3
Transfer Acceleration is a bucket-level feature that enables you to
perform faster data transfers to Amazon S3.

To use this operation, you must have permission to perform the
`s3:PutAccelerateConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The Transfer Acceleration state of a bucket can be set to one of the
following two values:

-   Enabled – Enables accelerated data transfers to the bucket.

-   Suspended – Disables accelerated data transfers to the bucket.

The `get_bucket_accelerate_configuration` action returns the transfer
acceleration state of a bucket.

After setting the Transfer Acceleration state of a bucket to Enabled, it
might take up to thirty minutes before the data transfer rates to the
bucket increase.

The name of the bucket used for Transfer Acceleration must be
DNS-compliant and must not contain periods (".").

For more information about transfer acceleration, see [Transfer
Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html).

The following operations are related to
`put_bucket_accelerate_configuration`:

-   `get_bucket_accelerate_configuration`

-   `create_bucket`

### Usage

    s3_put_bucket_accelerate_configuration(Bucket, AccelerateConfiguration,
      ExpectedBucketOwner, ChecksumAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_accelerate_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which the accelerate
configuration is set.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_accelerate_configuration_:_AccelerateConfiguration">AccelerateConfiguration</code></td>
<td><p>[required] Container for setting the transfer acceleration
state.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_accelerate_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_accelerate_configuration_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm used to create the checksum for the
object when using the SDK. This header will not provide any additional
functionality if not using the SDK. When sending this header, there must
be a corresponding <code>x-amz-checksum</code> or
<code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the
request with the HTTP status code <code
style="white-space: pre;">⁠400 Bad Request⁠</code>. For more information,
see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>If you provide an individual checksum, Amazon S3 ignores any provided
<code>ChecksumAlgorithm</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_accelerate_configuration(
      Bucket = "string",
      AccelerateConfiguration = list(
        Status = "Enabled"|"Suspended"
      ),
      ExpectedBucketOwner = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
    )
