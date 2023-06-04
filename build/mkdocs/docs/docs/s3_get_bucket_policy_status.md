<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_policy_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public

### Description

Retrieves the policy status for an Amazon S3 bucket, indicating whether
the bucket is public. In order to use this operation, you must have the
`s3:GetBucketPolicyStatus` permission. For more information about Amazon
S3 permissions, see [Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

For more information about when Amazon S3 considers a bucket public, see
[The Meaning of
"Public"](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html#access-control-block-public-access-policy-status).

The following operations are related to `get_bucket_policy_status`:

-   [Using Amazon S3 Block Public
    Access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)

-   `get_public_access_block`

-   `put_public_access_block`

-   `delete_public_access_block`

### Usage

    s3_get_bucket_policy_status(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_policy_status_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose policy status
you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_policy_status_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      PolicyStatus = list(
        IsPublic = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_bucket_policy_status(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )
