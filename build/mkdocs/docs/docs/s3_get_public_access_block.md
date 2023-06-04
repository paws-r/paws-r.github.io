<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_public_access_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the PublicAccessBlock configuration for an Amazon S3 bucket

### Description

Retrieves the `PublicAccessBlock` configuration for an Amazon S3 bucket.
To use this operation, you must have the `s3:GetBucketPublicAccessBlock`
permission. For more information about Amazon S3 permissions, see
[Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

When Amazon S3 evaluates the `PublicAccessBlock` configuration for a
bucket or an object, it checks the `PublicAccessBlock` configuration for
both the bucket (or the bucket that contains the object) and the bucket
owner's account. If the `PublicAccessBlock` settings are different
between the bucket and the account, Amazon S3 uses the most restrictive
combination of the bucket-level and account-level settings.

For more information about when Amazon S3 considers a bucket or an
object public, see [The Meaning of
"Public"](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to `get_public_access_block`:

-   [Using Amazon S3 Block Public
    Access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)

-   `put_public_access_block`

-   `get_public_access_block`

-   `delete_public_access_block`

### Usage

    s3_get_public_access_block(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_public_access_block_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose
<code>PublicAccessBlock</code> configuration you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_public_access_block_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      PublicAccessBlockConfiguration = list(
        BlockPublicAcls = TRUE|FALSE,
        IgnorePublicAcls = TRUE|FALSE,
        BlockPublicPolicy = TRUE|FALSE,
        RestrictPublicBuckets = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_public_access_block(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
