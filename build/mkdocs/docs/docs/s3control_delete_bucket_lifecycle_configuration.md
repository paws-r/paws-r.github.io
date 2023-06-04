<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_delete_bucket_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration

### Description

This action deletes an Amazon S3 on Outposts bucket's lifecycle
configuration. To delete an S3 bucket's lifecycle configuration, see
[DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
in the *Amazon S3 API Reference*.

Deletes the lifecycle configuration from the specified Outposts bucket.
Amazon S3 on Outposts removes all the lifecycle configuration rules in
the lifecycle subresource associated with the bucket. Your objects never
expire, and Amazon S3 on Outposts no longer automatically deletes any
objects on the basis of rules contained in the deleted lifecycle
configuration. For more information, see [Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in *Amazon S3 User Guide*.

To use this action, you must have permission to perform the
`s3-outposts:DeleteLifecycleConfiguration` action. By default, the
bucket owner has this permission and the Outposts bucket owner can grant
this permission to others.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples)
section.

For more information about object expiration, see [Elements to Describe
Lifecycle
Actions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

Related actions include:

-   `put_bucket_lifecycle_configuration`

-   `get_bucket_lifecycle_configuration`

### Usage

    s3control_delete_bucket_lifecycle_configuration(AccountId, Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_delete_bucket_lifecycle_configuration_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the lifecycle configuration to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_delete_bucket_lifecycle_configuration_:_Bucket">Bucket</code></td>
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
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_bucket_lifecycle_configuration(
      AccountId = "string",
      Bucket = "string"
    )
