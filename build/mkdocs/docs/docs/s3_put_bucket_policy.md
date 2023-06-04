<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies an Amazon S3 bucket policy to an Amazon S3 bucket

### Description

Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are
using an identity other than the root user of the Amazon Web Services
account that owns the bucket, the calling identity must have the
`put_bucket_policy` permissions on the specified bucket and belong to
the bucket owner's account in order to use this operation.

If you don't have `put_bucket_policy` permissions, Amazon S3 returns a
`⁠403 Access Denied⁠` error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's account,
Amazon S3 returns a `⁠405 Method Not Allowed⁠` error.

To ensure that bucket owners don't inadvertently lock themselves out of
their own buckets, the root principal in a bucket owner's Amazon Web
Services account can perform the `get_bucket_policy`,
`put_bucket_policy`, and `delete_bucket_policy` API actions, even if
their bucket policy explicitly denies the root principal's access.
Bucket owner root principals can only be blocked from performing these
API actions by VPC endpoint policies and Amazon Web Services
Organizations policies.

For more information, see [Bucket policy
examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html).

The following operations are related to `put_bucket_policy`:

-   `create_bucket`

-   `delete_bucket`

### Usage

    s3_put_bucket_policy(Bucket, ContentMD5, ChecksumAlgorithm,
      ConfirmRemoveSelfBucketAccess, Policy, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_policy_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3_put_bucket_policy_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash of the request body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_policy_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_policy_:_ConfirmRemoveSelfBucketAccess">ConfirmRemoveSelfBucketAccess</code></td>
<td><p>Set this parameter to true to confirm that you want to remove
your permissions to change this bucket policy in the future.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_policy_:_Policy">Policy</code></td>
<td><p>[required] The bucket policy as a JSON document.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_policy_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_policy(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ConfirmRemoveSelfBucketAccess = TRUE|FALSE,
      Policy = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets a permission policy on a bucket.
    svc$put_bucket_policy(
      Bucket = "examplebucket",
      Policy = "{\"Version\": \"2012-10-17\", \"Statement\": [{ \"Sid\": \"id-1\",\"Effect..."
    )

    ## End(Not run)
