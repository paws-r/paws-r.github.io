<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_ownership_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or modifies OwnershipControls for an Amazon S3 bucket

### Description

Creates or modifies `OwnershipControls` for an Amazon S3 bucket. To use
this operation, you must have the `s3:PutBucketOwnershipControls`
permission. For more information about Amazon S3 permissions, see
[Specifying permissions in a
policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide//using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see [Using object
ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide//about-object-ownership.html).

The following operations are related to `put_bucket_ownership_controls`:

-   `get_bucket_ownership_controls`

-   `delete_bucket_ownership_controls`

### Usage

    s3_put_bucket_ownership_controls(Bucket, ContentMD5,
      ExpectedBucketOwner, OwnershipControls)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_ownership_controls_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose
<code>OwnershipControls</code> you want to set.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_ownership_controls_:_ContentMD5">ContentMD5</code></td>
<td><p>The MD5 hash of the <code>OwnershipControls</code> request
body.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_ownership_controls_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_ownership_controls_:_OwnershipControls">OwnershipControls</code></td>
<td><p>[required] The <code>OwnershipControls</code>
(BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) that you
want to apply to this Amazon S3 bucket.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_ownership_controls(
      Bucket = "string",
      ContentMD5 = "string",
      ExpectedBucketOwner = "string",
      OwnershipControls = list(
        Rules = list(
          list(
            ObjectOwnership = "BucketOwnerPreferred"|"ObjectWriter"|"BucketOwnerEnforced"
          )
        )
      )
    )
