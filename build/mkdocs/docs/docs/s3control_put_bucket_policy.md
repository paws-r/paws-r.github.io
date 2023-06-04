<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_bucket_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action puts a bucket policy to an Amazon S3 on Outposts bucket

### Description

This action puts a bucket policy to an Amazon S3 on Outposts bucket. To
put a policy on an S3 bucket, see `put_bucket_policy` in the *Amazon S3
API Reference*.

Applies an Amazon S3 bucket policy to an Outposts bucket. For more
information, see [Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the *Amazon S3 User Guide*.

If you are using an identity other than the root user of the Amazon Web
Services account that owns the Outposts bucket, the calling identity
must have the `put_bucket_policy` permissions on the specified Outposts
bucket and belong to the bucket owner's account in order to use this
action.

If you don't have `put_bucket_policy` permissions, Amazon S3 returns a
`⁠403 Access Denied⁠` error. If you have the correct permissions, but
you're not using an identity that belongs to the bucket owner's account,
Amazon S3 returns a `⁠405 Method Not Allowed⁠` error.

As a security precaution, the root user of the Amazon Web Services
account that owns a bucket can always use this action, even if the
policy explicitly denies the root user the ability to perform this
action.

For more information about bucket policies, see [Using Bucket Policies
and User
Policies](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-iam-policies.html).

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples)
section.

The following actions are related to `put_bucket_policy`:

-   `get_bucket_policy`

-   `delete_bucket_policy`

### Usage

    s3control_put_bucket_policy(AccountId, Bucket,
      ConfirmRemoveSelfBucketAccess, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_bucket_policy_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_put_bucket_policy_:_Bucket">Bucket</code></td>
<td><p>[required] Specifies the bucket.</p>
<p>For using this parameter with Amazon S3 on Outposts with the REST
API, you must specify the name and the x-amz-outpost-id as well.</p>
<p>For using this parameter with S3 on Outposts with the Amazon Web
Services SDK and CLI, you must specify the ARN of the bucket accessed in
the format <code
style="white-space: pre;">⁠arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/bucket/&lt;my-bucket-name&gt;⁠</code>.
For example, to access the bucket <code>reports</code> through Outpost
<code>my-outpost</code> owned by account <code>123456789012</code> in
Region <code>us-west-2</code>, use the URL encoding of
<code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>.
The value must be URL encoded.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_bucket_policy_:_ConfirmRemoveSelfBucketAccess">ConfirmRemoveSelfBucketAccess</code></td>
<td><p>Set this parameter to true to confirm that you want to remove
your permissions to change this bucket policy in the future.</p>
<p>This is not supported by Amazon S3 on Outposts buckets.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_put_bucket_policy_:_Policy">Policy</code></td>
<td><p>[required] The bucket policy as a JSON document.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_policy(
      AccountId = "string",
      Bucket = "string",
      ConfirmRemoveSelfBucketAccess = TRUE|FALSE,
      Policy = "string"
    )
