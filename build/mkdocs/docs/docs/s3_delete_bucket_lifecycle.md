<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_lifecycle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the lifecycle configuration from the specified bucket

### Description

Deletes the lifecycle configuration from the specified bucket. Amazon S3
removes all the lifecycle configuration rules in the lifecycle
subresource associated with the bucket. Your objects never expire, and
Amazon S3 no longer automatically deletes any objects on the basis of
rules contained in the deleted lifecycle configuration.

To use this operation, you must have permission to perform the
`s3:PutLifecycleConfiguration` action. By default, the bucket owner has
this permission and the bucket owner can grant this permission to
others.

There is usually some time lag before lifecycle configuration deletion
is fully propagated to all the Amazon S3 systems.

For more information about the object expiration, see [Elements to
Describe Lifecycle
Actions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

Related actions include:

-   `put_bucket_lifecycle_configuration`

-   `get_bucket_lifecycle_configuration`

### Usage

    s3_delete_bucket_lifecycle(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_lifecycle_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name of the lifecycle to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_lifecycle_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_lifecycle(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes lifecycle configuration on a bucket.
    svc$delete_bucket_lifecycle(
      Bucket = "examplebucket"
    )

    ## End(Not run)
