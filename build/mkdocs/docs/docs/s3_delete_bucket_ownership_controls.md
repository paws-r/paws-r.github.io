<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_ownership_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes OwnershipControls for an Amazon S3 bucket

### Description

Removes `OwnershipControls` for an Amazon S3 bucket. To use this
operation, you must have the `s3:PutBucketOwnershipControls` permission.
For more information about Amazon S3 permissions, see [Specifying
Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see [Using Object
Ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

The following operations are related to
`delete_bucket_ownership_controls`:

-   `get_bucket_ownership_controls`

-   `put_bucket_ownership_controls`

### Usage

    s3_delete_bucket_ownership_controls(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_delete_bucket_ownership_controls_:_Bucket">Bucket</code></td>
<td><p>[required] The Amazon S3 bucket whose
<code>OwnershipControls</code> you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_ownership_controls_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_ownership_controls(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
