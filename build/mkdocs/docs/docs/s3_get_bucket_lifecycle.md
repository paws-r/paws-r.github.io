<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_lifecycle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For an updated version of this API, see GetBucketLifecycleConfiguration

### Description

For an updated version of this API, see
`get_bucket_lifecycle_configuration`. If you configured a bucket
lifecycle using the `filter` element, you should see the updated version
of this topic. This topic is provided for backward compatibility.

Returns the lifecycle configuration information set on the bucket. For
information about lifecycle configuration, see [Object Lifecycle
Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).

To use this operation, you must have permission to perform the
`s3:GetLifecycleConfiguration` action. The bucket owner has this
permission by default. The bucket owner can grant this permission to
others. For more information about permissions, see [Permissions Related
to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

`get_bucket_lifecycle` has the following special error:

-   Error code: `NoSuchLifecycleConfiguration`

    -   Description: The lifecycle configuration does not exist.

    -   HTTP Status Code: 404 Not Found

    -   SOAP Fault Code Prefix: Client

The following operations are related to `get_bucket_lifecycle`:

-   `get_bucket_lifecycle_configuration`

-   `put_bucket_lifecycle`

-   `delete_bucket_lifecycle`

### Usage

    s3_get_bucket_lifecycle(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_lifecycle_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket for which to get the lifecycle
information.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_lifecycle_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
    )

### Request syntax

    svc$get_bucket_lifecycle(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example gets ACL on the specified bucket.
    svc$get_bucket_lifecycle(
      Bucket = "acl1"
    )

    ## End(Not run)
