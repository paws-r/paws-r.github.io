<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the default encryption configuration for an Amazon S3 bucket

### Description

Returns the default encryption configuration for an Amazon S3 bucket. By
default, all buckets have a default encryption configuration that uses
server-side encryption with Amazon S3 managed keys (SSE-S3). For
information about the bucket default encryption feature, see [Amazon S3
Bucket Default
Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html)
in the *Amazon S3 User Guide*.

To use this operation, you must have permission to perform the
`s3:GetEncryptionConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The following operations are related to `get_bucket_encryption`:

-   `put_bucket_encryption`

-   `delete_bucket_encryption`

### Usage

    s3_get_bucket_encryption(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_encryption_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket from which the server-side
encryption configuration is retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_encryption_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      )
    )

### Request syntax

    svc$get_bucket_encryption(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
