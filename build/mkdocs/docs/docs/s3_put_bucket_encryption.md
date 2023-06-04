<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action uses the encryption subresource to configure default encryption and Amazon S3 Bucket Keys for an existing bucket

### Description

This action uses the `encryption` subresource to configure default
encryption and Amazon S3 Bucket Keys for an existing bucket.

By default, all buckets have a default encryption configuration that
uses server-side encryption with Amazon S3 managed keys (SSE-S3). You
can optionally configure default encryption for a bucket by using
server-side encryption with an Amazon Web Services KMS key (SSE-KMS) or
a customer-provided key (SSE-C). If you specify default encryption by
using SSE-KMS, you can also configure Amazon S3 Bucket Keys. For
information about bucket default encryption, see [Amazon S3 bucket
default
encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html)
in the *Amazon S3 User Guide*. For more information about S3 Bucket
Keys, see [Amazon S3 Bucket
Keys](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html)
in the *Amazon S3 User Guide*.

This action requires Amazon Web Services Signature Version 4. For more
information, see [Authenticating Requests (Amazon Web Services Signature
Version
4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

To use this operation, you must have permissions to perform the
`s3:PutEncryptionConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

The following operations are related to `put_bucket_encryption`:

-   `get_bucket_encryption`

-   `delete_bucket_encryption`

### Usage

    s3_put_bucket_encryption(Bucket, ContentMD5, ChecksumAlgorithm,
      ServerSideEncryptionConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_encryption_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies default encryption for a bucket using
server-side encryption with different key options. By default, all
buckets have a default encryption configuration that uses server-side
encryption with Amazon S3 managed keys (SSE-S3). You can optionally
configure default encryption for a bucket by using server-side
encryption with an Amazon Web Services KMS key (SSE-KMS) or a
customer-provided key (SSE-C). For information about the bucket default
encryption feature, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html">Amazon
S3 Bucket Default Encryption</a> in the <em>Amazon S3 User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_encryption_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the server-side
encryption configuration.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_encryption_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_encryption_:_ServerSideEncryptionConfiguration">ServerSideEncryptionConfiguration</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_encryption_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_encryption(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ServerSideEncryptionConfiguration = list(
        Rules = list(
          list(
            ApplyServerSideEncryptionByDefault = list(
              SSEAlgorithm = "AES256"|"aws:kms",
              KMSMasterKeyID = "string"
            ),
            BucketKeyEnabled = TRUE|FALSE
          )
        )
      ),
      ExpectedBucketOwner = "string"
    )
