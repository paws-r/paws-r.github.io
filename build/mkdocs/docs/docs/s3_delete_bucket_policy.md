<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_delete_bucket_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This implementation of the DELETE action uses the policy subresource to delete the policy of a specified bucket

### Description

This implementation of the DELETE action uses the policy subresource to
delete the policy of a specified bucket. If you are using an identity
other than the root user of the Amazon Web Services account that owns
the bucket, the calling identity must have the `delete_bucket_policy`
permissions on the specified bucket and belong to the bucket owner's
account to use this operation.

If you don't have `delete_bucket_policy` permissions, Amazon S3 returns
a `⁠403 Access Denied⁠` error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's account,
Amazon S3 returns a `⁠405 Method Not Allowed⁠` error.

To ensure that bucket owners don't inadvertently lock themselves out of
their own buckets, the root principal in a bucket owner's Amazon Web
Services account can perform the `get_bucket_policy`,
`put_bucket_policy`, and `delete_bucket_policy` API actions, even if
their bucket policy explicitly denies the root principal's access.
Bucket owner root principals can only be blocked from performing these
API actions by VPC endpoint policies and Amazon Web Services
Organizations policies.

For more information about bucket policies, see [Using Bucket Policies
and
UserPolicies](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-iam-policies.html).

The following operations are related to `delete_bucket_policy`

-   `create_bucket`

-   `delete_object`

### Usage

    s3_delete_bucket_policy(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_delete_bucket_policy_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_delete_bucket_policy_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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

    svc$delete_bucket_policy(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes bucket policy on the specified bucket.
    svc$delete_bucket_policy(
      Bucket = "examplebucket"
    )

    ## End(Not run)
