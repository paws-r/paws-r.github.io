<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the replication configuration from the bucket

### Description

Deletes the replication configuration from the bucket.

To use this operation, you must have permissions to perform the
`s3:PutReplicationConfiguration` action. The bucket owner has these
permissions by default and can grant it to others. For more information
about permissions, see [Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

It can take a while for the deletion of a replication configuration to
fully propagate.

For information about replication configuration, see
[Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html)
in the *Amazon S3 User Guide*.

The following operations are related to `delete_bucket_replication`:

-   `put_bucket_replication`

-   `get_bucket_replication`

### Usage

    s3_delete_bucket_replication(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_replication_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_replication_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_replication(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes replication configuration set on bucket.
    svc$delete_bucket_replication(
      Bucket = "example"
    )

    ## End(Not run)
