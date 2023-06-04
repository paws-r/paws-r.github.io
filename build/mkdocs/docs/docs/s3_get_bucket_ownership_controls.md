<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_ownership_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves OwnershipControls for an Amazon S3 bucket

### Description

Retrieves `OwnershipControls` for an Amazon S3 bucket. To use this
operation, you must have the `s3:GetBucketOwnershipControls` permission.
For more information about Amazon S3 permissions, see [Specifying
permissions in a
policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

For information about Amazon S3 Object Ownership, see [Using Object
Ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

The following operations are related to `get_bucket_ownership_controls`:

-   `put_bucket_ownership_controls`

-   `delete_bucket_ownership_controls`

### Usage

    s3_get_bucket_ownership_controls(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_get_bucket_ownership_controls_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose
<code>OwnershipControls</code> you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_ownership_controls_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      OwnershipControls = list(
        Rules = list(
          list(
            ObjectOwnership = "BucketOwnerPreferred"|"ObjectWriter"|"BucketOwnerEnforced"
          )
        )
      )
    )

### Request syntax

    svc$get_bucket_ownership_controls(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
