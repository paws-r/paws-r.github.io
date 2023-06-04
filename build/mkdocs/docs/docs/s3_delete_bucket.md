<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the S3 bucket

### Description

Deletes the S3 bucket. All objects (including all object versions and
delete markers) in the bucket must be deleted before the bucket itself
can be deleted.

The following operations are related to `delete_bucket`:

-   `create_bucket`

-   `delete_object`

### Usage

    s3_delete_bucket(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the bucket being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes the specified bucket.
    svc$delete_bucket(
      Bucket = "forrandall2"
    )

    ## End(Not run)
