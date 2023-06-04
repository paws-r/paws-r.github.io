<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_public_access_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the PublicAccessBlock configuration for an Amazon S3 bucket

### Description

Removes the `PublicAccessBlock` configuration for an Amazon S3 bucket.
To use this operation, you must have the `s3:PutBucketPublicAccessBlock`
permission. For more information about permissions, see [Permissions
Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

The following operations are related to `delete_public_access_block`:

-   [Using Amazon S3 Block Public
    Access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)

-   `get_public_access_block`

-   `put_public_access_block`

-   `get_bucket_policy_status`

### Usage

    s3_delete_public_access_block(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_public_access_block_:_Bucket">Bucket</code></td>
<td><p>[required] The Amazon S3 bucket whose
<code>PublicAccessBlock</code> configuration you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_public_access_block_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_public_access_block(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
