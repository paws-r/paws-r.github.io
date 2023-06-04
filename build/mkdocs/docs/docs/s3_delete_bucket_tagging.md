<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_tagging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the tags from the bucket

### Description

Deletes the tags from the bucket.

To use this operation, you must have permission to perform the
`s3:PutBucketTagging` action. By default, the bucket owner has this
permission and can grant this permission to others.

The following operations are related to `delete_bucket_tagging`:

-   `get_bucket_tagging`

-   `put_bucket_tagging`

### Usage

    s3_delete_bucket_tagging(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_tagging_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket that has the tag set to be
removed.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_tagging_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_tagging(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes bucket tags.
    svc$delete_bucket_tagging(
      Bucket = "examplebucket"
    )

    ## End(Not run)
