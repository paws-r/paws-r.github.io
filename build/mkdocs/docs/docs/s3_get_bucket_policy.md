<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_get_bucket_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the policy of a specified bucket

### Description

Returns the policy of a specified bucket. If you are using an identity
other than the root user of the Amazon Web Services account that owns
the bucket, the calling identity must have the `get_bucket_policy`
permissions on the specified bucket and belong to the bucket owner's
account in order to use this operation.

If you don't have `get_bucket_policy` permissions, Amazon S3 returns a
`⁠403 Access Denied⁠` error. If you have the correct permissions, but
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

To use this API operation against an access point, provide the alias of
the access point in place of the bucket name.

To use this API operation against an Object Lambda access point, provide
the alias of the Object Lambda access point in place of the bucket name.
If the Object Lambda access point alias in a request is not valid, the
error code `InvalidAccessPointAliasError` is returned. For more
information about `InvalidAccessPointAliasError`, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

For more information about bucket policies, see [Using Bucket Policies
and User
Policies](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-iam-policies.html).

The following action is related to `get_bucket_policy`:

-   `get_object`

### Usage

    s3_get_bucket_policy(Bucket, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_get_bucket_policy_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name for which to get the bucket
policy.</p>
<p>To use this API operation against an access point, provide the alias
of the access point in place of the bucket name.</p>
<p>To use this API operation against an Object Lambda access point,
provide the alias of the Object Lambda access point in place of the
bucket name. If the Object Lambda access point alias in a request is not
valid, the error code <code>InvalidAccessPointAliasError</code> is
returned. For more information about
<code>InvalidAccessPointAliasError</code>, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List
of Error Codes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_get_bucket_policy_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Policy = "string"
    )

### Request syntax

    svc$get_bucket_policy(
      Bucket = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example returns bucket policy associated with a bucket.
    svc$get_bucket_policy(
      Bucket = "examplebucket"
    )

    ## End(Not run)
