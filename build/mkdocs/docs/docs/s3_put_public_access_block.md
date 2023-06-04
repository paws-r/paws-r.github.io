<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_public_access_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or modifies the PublicAccessBlock configuration for an Amazon S3 bucket

### Description

Creates or modifies the `PublicAccessBlock` configuration for an Amazon
S3 bucket. To use this operation, you must have the
`s3:PutBucketPublicAccessBlock` permission. For more information about
Amazon S3 permissions, see [Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

When Amazon S3 evaluates the `PublicAccessBlock` configuration for a
bucket or an object, it checks the `PublicAccessBlock` configuration for
both the bucket (or the bucket that contains the object) and the bucket
owner's account. If the `PublicAccessBlock` configurations are different
between the bucket and the account, Amazon S3 uses the most restrictive
combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see [The Meaning of
"Public"](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to `put_public_access_block`:

-   `get_public_access_block`

-   `delete_public_access_block`

-   `get_bucket_policy_status`

-   [Using Amazon S3 Block Public
    Access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)

### Usage

    s3_put_public_access_block(Bucket, ContentMD5, ChecksumAlgorithm,
      PublicAccessBlockConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_public_access_block_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose
<code>PublicAccessBlock</code> configuration you want to set.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_public_access_block_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash of the <code>put_public_access_block</code> request
body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_public_access_block_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<tr class="even">
<td><code
id="s3_put_public_access_block_:_PublicAccessBlockConfiguration">PublicAccessBlockConfiguration</code></td>
<td><p>[required] The <code>PublicAccessBlock</code> configuration that
you want to apply to this Amazon S3 bucket. You can enable the
configuration options in any combination. For more information about
when Amazon S3 considers a bucket or object public, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html#access-control-block-public-access-policy-status">The
Meaning of "Public"</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_public_access_block_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_public_access_block(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      PublicAccessBlockConfiguration = list(
        BlockPublicAcls = TRUE|FALSE,
        IgnorePublicAcls = TRUE|FALSE,
        BlockPublicPolicy = TRUE|FALSE,
        RestrictPublicBuckets = TRUE|FALSE
      ),
      ExpectedBucketOwner = "string"
    )
