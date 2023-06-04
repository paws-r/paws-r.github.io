<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle configuration

### Description

Creates a new lifecycle configuration for the bucket or replaces an
existing lifecycle configuration. Keep in mind that this will overwrite
an existing lifecycle configuration, so if you want to retain any
configuration details, they must be included in the new lifecycle
configuration. For information about lifecycle configuration, see
[Managing your storage
lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).

Bucket lifecycle configuration now supports specifying a lifecycle rule
using an object key name prefix, one or more object tags, or a
combination of both. Accordingly, this section describes the latest API.
The previous version of the API supported filtering based only on an
object key name prefix, which is supported for backward compatibility.
For the related API description, see `put_bucket_lifecycle`.

#### Rules

You specify the lifecycle configuration in your request body. The
lifecycle configuration is specified as XML consisting of one or more
rules. An Amazon S3 Lifecycle configuration can have up to 1,000 rules.
This limit is not adjustable. Each rule consists of the following:

-   Filter identifying a subset of objects to which the rule applies.
    The filter can be based on a key name prefix, object tags, or a
    combination of both.

-   Status whether the rule is in effect.

-   One or more lifecycle transition and expiration actions that you
    want Amazon S3 to perform on the objects identified by the filter.
    If the state of your bucket is versioning-enabled or
    versioning-suspended, you can have many versions of the same object
    (one current version and zero or more noncurrent versions). Amazon
    S3 provides predefined actions that you can specify for current and
    noncurrent object versions.

For more information, see [Object Lifecycle
Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
and [Lifecycle Configuration
Elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html).

#### Permissions

By default, all Amazon S3 resources are private, including buckets,
objects, and related subresources (for example, lifecycle configuration
and website configuration). Only the resource owner (that is, the Amazon
Web Services account that created it) can access the resource. The
resource owner can optionally grant access permissions to others by
writing an access policy. For this operation, a user must get the
`s3:PutLifecycleConfiguration` permission.

You can also explicitly deny permissions. Explicit deny also supersedes
any other permissions. If you want to block users or accounts from
removing or deleting objects from your bucket, you must deny them
permissions for the following actions:

-   `s3:DeleteObject`

-   `s3:DeleteObjectVersion`

-   `s3:PutLifecycleConfiguration`

For more information about permissions, see [Managing Access Permissions
to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The following operations are related to
`put_bucket_lifecycle_configuration`:

-   [Examples of Lifecycle
    Configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html)

-   `get_bucket_lifecycle_configuration`

-   `delete_bucket_lifecycle`

### Usage

    s3_put_bucket_lifecycle_configuration(Bucket, ChecksumAlgorithm,
      LifecycleConfiguration, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_lifecycle_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to set the
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_lifecycle_configuration_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<tr class="odd">
<td><code
id="s3_put_bucket_lifecycle_configuration_:_LifecycleConfiguration">LifecycleConfiguration</code></td>
<td><p>Container for lifecycle rules. You can add as many as 1,000
rules.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_lifecycle_configuration_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$put_bucket_lifecycle_configuration(
      Bucket = "string",
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
            Filter = list(
              Prefix = "string",
              Tag = list(
                Key = "string",
                Value = "string"
              ),
              ObjectSizeGreaterThan = 123,
              ObjectSizeLessThan = 123,
              And = list(
                Prefix = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                ),
                ObjectSizeGreaterThan = 123,
                ObjectSizeLessThan = 123
              )
            ),
            Status = "Enabled"|"Disabled",
            Transitions = list(
              list(
                Date = as.POSIXct(
                  "2015-01-01"
                ),
                Days = 123,
                StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"GLACIER_IR"
              )
            ),
            NoncurrentVersionTransitions = list(
              list(
                NoncurrentDays = 123,
                StorageClass = "GLACIER"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"GLACIER_IR",
                NewerNoncurrentVersions = 123
              )
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

### Examples

    ## Not run: 
    # The following example replaces existing lifecycle configuration, if any,
    # on the specified bucket.
    svc$put_bucket_lifecycle_configuration(
      Bucket = "examplebucket",
      LifecycleConfiguration = list(
        Rules = list(
          list(
            Expiration = list(
              Days = 3650L
            ),
            Filter = list(
              Prefix = "documents/"
            ),
            ID = "TestOnly",
            Status = "Enabled",
            Transitions = list(
              list(
                Days = 365L,
                StorageClass = "GLACIER"
              )
            )
          )
        )
      )
    )

    ## End(Not run)
