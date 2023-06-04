<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_lifecycle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For an updated version of this API, see PutBucketLifecycleConfiguration

### Description

For an updated version of this API, see
`put_bucket_lifecycle_configuration`. This version has been deprecated.
Existing lifecycle configurations will work. For new lifecycle
configurations, use the updated API.

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. For information about lifecycle
configuration, see [Object Lifecycle
Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
in the *Amazon S3 User Guide*.

By default, all Amazon S3 resources, including buckets, objects, and
related subresources (for example, lifecycle configuration and website
configuration) are private. Only the resource owner, the Amazon Web
Services account that created the resource, can access it. The resource
owner can optionally grant access permissions to others by writing an
access policy. For this operation, users must get the
`s3:PutLifecycleConfiguration` permission.

You can also explicitly deny permissions. Explicit denial also
supersedes any other permissions. If you want to prevent users or
accounts from removing or deleting objects from your bucket, you must
deny them permissions for the following actions:

-   `s3:DeleteObject`

-   `s3:DeleteObjectVersion`

-   `s3:PutLifecycleConfiguration`

For more information about permissions, see [Managing Access Permissions
to your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

For more examples of transitioning objects to storage classes such as
STANDARD\_IA or ONEZONE\_IA, see [Examples of Lifecycle
Configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html#lifecycle-configuration-examples).

The following operations are related to `put_bucket_lifecycle`:

-   `get_bucket_lifecycle`(Deprecated)

-   `get_bucket_lifecycle_configuration`

-   `restore_object`

-   By default, a resource owner—in this case, a bucket owner, which is
    the Amazon Web Services account that created the bucket—can perform
    any of the operations. A resource owner can also grant others
    permission to perform the operation. For more information, see the
    following topics in the Amazon S3 User Guide:

    -   [Specifying Permissions in a
        Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html)

    -   [Managing Access Permissions to your Amazon S3
        Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)

### Usage

    s3_put_bucket_lifecycle(Bucket, ContentMD5, ChecksumAlgorithm,
      LifecycleConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_lifecycle_:_Bucket">Bucket</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_lifecycle_:_ContentMD5">ContentMD5</code></td>
<td><p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_lifecycle_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
id="s3_put_bucket_lifecycle_:_LifecycleConfiguration">LifecycleConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_lifecycle_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_lifecycle(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      LifecycleConfiguration = list(
        Rules = list(
          list(
            Expiration = list(
              Date = as.POSIXct(
                "2015-01-01"
              ),
              Days = 123,
              ExpiredObjectDeleteMarker = TRUE|FALSE
            ),
            ID = "string",
            Prefix = "string",
            Status = "Enabled"|"Disabled",
            Transition = list(
              Date = as.POSIXct(
                "2015-01-01"
              ),
              Days = 123,
              StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"GLACIER_IR"
            ),
            NoncurrentVersionTransition = list(
              NoncurrentDays = 123,
              StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"GLACIER_IR",
              NewerNoncurrentVersions = 123
            ),
            NoncurrentVersionExpiration = list(
              NoncurrentDays = 123,
              NewerNoncurrentVersions = 123
            ),
            AbortIncompleteMultipartUpload = list(
              DaysAfterInitiation = 123
            )
          )
        )
      ),
      ExpectedBucketOwner = "string"
    )
